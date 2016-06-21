/*
 * Copyright (c) 2015-2016 Jerry Lundström <lundstrom.jerry@gmail.com>
 * Copyright (c) 2016 make install AB
 * Copyright (c) 2015 .SE (The Internet Infrastructure Foundation)
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include "crypt_pkcs11_struct.h"

MODULE = Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS  PACKAGE = Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS  PREFIX = crypt_pkcs11_ck_rsa_pkcs_oaep_params_

PROTOTYPES: ENABLE

Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_new(class)
    const char* class
PROTOTYPE: $
OUTPUT:
    RETVAL

MODULE = Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS  PACKAGE = Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMSPtr  PREFIX = crypt_pkcs11_ck_rsa_pkcs_oaep_params_

PROTOTYPES: ENABLE

void
crypt_pkcs11_ck_rsa_pkcs_oaep_params_DESTROY(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $

SV*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_toBytes(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_fromBytes(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_hashAlg(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_hashAlg(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_hashAlg(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_set_hashAlg(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_mgf(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_mgf(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_mgf(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_set_mgf(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_source(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_source(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_source(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_set_source(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_pSourceData(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_oaep_params_pSourceData(object)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_oaep_params_get_pSourceData(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_oaep_params_set_pSourceData(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_OAEP_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

MODULE = Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS  PACKAGE = Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS  PREFIX = crypt_pkcs11_ck_rsa_pkcs_pss_params_

PROTOTYPES: ENABLE

Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS*
crypt_pkcs11_ck_rsa_pkcs_pss_params_new(class)
    const char* class
PROTOTYPE: $
OUTPUT:
    RETVAL

MODULE = Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS  PACKAGE = Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMSPtr  PREFIX = crypt_pkcs11_ck_rsa_pkcs_pss_params_

PROTOTYPES: ENABLE

void
crypt_pkcs11_ck_rsa_pkcs_pss_params_DESTROY(object)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
PROTOTYPE: $

SV*
crypt_pkcs11_ck_rsa_pkcs_pss_params_toBytes(object)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
PROTOTYPE: $
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_fromBytes(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_get_hashAlg(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_pss_params_hashAlg(object)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_pss_params_get_hashAlg(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_set_hashAlg(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_get_mgf(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_pss_params_mgf(object)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_pss_params_get_mgf(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_set_mgf(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_get_sLen(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL

SV*
crypt_pkcs11_ck_rsa_pkcs_pss_params_sLen(object)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
PROTOTYPE: $
CODE:
    RETVAL = newSV(0);
    crypt_pkcs11_ck_rsa_pkcs_pss_params_get_sLen(object, RETVAL);
OUTPUT:
    RETVAL

CK_RV
crypt_pkcs11_ck_rsa_pkcs_pss_params_set_sLen(object, sv)
    Crypt::PKCS11::CK_RSA_PKCS_PSS_PARAMS* object
    SV* sv
PROTOTYPE: $$
OUTPUT:
    RETVAL


MODULE = Crypt::PKCS11::CK_RSA  PACKAGE = Crypt::PKCS11::CK_RSA

