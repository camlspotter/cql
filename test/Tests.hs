-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at http://mozilla.org/MPL/2.0/.

module Main where

import Test.Tasty

import qualified Test.Database.CQL.Frame.Request  as Rq
import qualified Test.Database.CQL.Frame.Response as Rs

main :: IO ()
main = defaultMain $
    testGroup "Tests" [ Rq.tests, Rs.tests ]
