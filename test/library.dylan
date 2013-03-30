module: dylan-user

define library template-test
   use common-dylan;
   use system;
   use io;
   use peg-parser;

   use template-engine;
end library;


define module template-test
   // from common-dylan
   use common-dylan;
   // from system
   use file-system;
   // from io
   use streams;
   use standard-io;
   use format-out;
   // from peg-parser
   use peg-parser, import: { *parser-trace*, *parser-cache-hits* };
   
   use template-engine;
end module;
