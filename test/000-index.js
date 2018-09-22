require('./lib/common')

require("./tests/000-createTable.js")

require("./tests/010-describe.js")
run_test('[SQL] DECRIBE TABLE',  'test/res/010-describe.yaml' )

require("./tests/020-specialSigns.js")

require("./tests/030-insert.js")
run_test('[SQL] INSERT',  'test/res/030-insert.yaml' )

require("./tests/031-insert_or_update.js")
require("./tests/032-insert_or_replace.js")
require("./tests/040-update.js")
run_test('[SQL] UPDATE',  'test/res/040-update.yaml' )
require("./tests/050-replace.js")
run_test('[SQL] REPLACE',  'test/res/050-replace.yaml' )
require("./tests/060-delete.js")
run_test('[SQL] DELETE',  'test/res/060-delete.yaml' )
require("./tests/070-get.js")
require("./tests/080-query.js")
run_test('[SQL] QUERY',  'test/res/070-query.yaml' )
require("./tests/090-scan.js")
run_test('[SQL] SCAN',  'test/res/090-scan.yaml' )
require("./tests/999-deleteTable.js")
