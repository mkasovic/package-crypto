// Copyright (c) 2018, IN2 Ltd. (http://www.in2.hr) All Rights Reserved.
//
// IN2 Ltd. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

documentation {
    The hashing algorithms supported by this package.
}
public type Algorithm "SHA1"|"SHA256"|"MD5";

documentation { The `SHA1` hashing algorithm" }
@final public Algorithm SHA1 = "SHA1";
documentation { The `SHA256` hashing algorithm }
@final public Algorithm SHA256 = "SHA256";
documentation { The `MD5` hashing algorithm }
@final public Algorithm MD5 = "MD5";

documentation {
    The key types supported by this package.
}
public type KeyType "TEXT"|"BASE64";

documentation { The `TEXT` key type }
@final public KeyType TEXT = "TEXT";
documentation { The `BASE64` key type }
@final public KeyType BASE64 = "BASE64";

documentation {
    Returns the HMAC value of the provided base string.

    P{{baseString}} The string to be hashed
    P{{keyString}} The key string
    P{{algorithm}} The hashing algorithm to be used
	P{{keyType}} The key type to denote in what format key is
    R{{}} The hashed string
}
public native function hmac(string baseString, string keyString, Algorithm algorithm, KeyType keyType = "TEXT") returns (string);
