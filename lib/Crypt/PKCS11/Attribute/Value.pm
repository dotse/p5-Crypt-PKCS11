# Copyright (c) 2014 Jerry Lundström <lundstrom.jerry@gmail.com>
# Copyright (c) 2014 .SE (The Internet Infrastructure Foundation)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
# GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
# IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

package Crypt::PKCS11::Attribute::Value;

use strict;
use warnings;
use Carp;

use base qw(Crypt::PKCS11::Attribute);

use Crypt::PKCS11;

sub type () { CKA_VALUE }

sub set {
    my ($self) = shift;

    if (scalar @_ == 1 and defined $_[0] and !Crypt::PKCS11::XS::SvUOK($_[0])) {
        unless (utf8::downgrade($_[0], 1)) {
            confess 'Value to set is not a valid string';
        }

        $self->{pValue} = pack('a*', $_[0]);
    }
    else {
        foreach (@_) {
            unless (defined $_  and Crypt::PKCS11::XS::SvUOK($_) and $_ >= 0 and $_ <= 255) {
                confess 'Value to set is not a valid byte';
            }
        }

        $self->{pValue} = pack('C*', @_);
    }

    return $self;
}

sub get {
    my ($self) = @_;

    unless (defined $self->{pValue}) {
        return undef;
    }

    unless (wantarray) {
        my $string = unpack('a*', $self->{pValue});
        utf8::upgrade($string);

        return $string;
    }

    return unpack('C*', $self->{pValue});
}

1;

__END__
