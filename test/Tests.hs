-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at http://mozilla.org/MPL/2.0/.

module Main where

import Test.Tasty

import qualified Test.Database.CQL.Protocol             as Proto
import qualified Test.Database.CQL.Protocol.Arbitraries as Arb

main :: IO ()
main = defaultMain $
    testGroup "Tests" [ Arb.tests, Proto.tests ]
