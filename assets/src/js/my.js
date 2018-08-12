sortTable = (function (options) {

    var
        _private = {},
        $item = $('#table'),
        _init = function() {

            console.log($item.bootstrapTable.options);

            $item.bootstrapTable({
                columns: [[
                    {
                        field: 'date',
                        title: 'Дата',
                        sorter: function(a, b) {
                            var first = moment(a, "DD-MM-YYYY", true).toDate();
                            var second = moment(b, "DD-MM-YYYY", true).toDate();
                            if (first < second) return -1;
                            if (first > second) return 1;
                            return 0;
                        },
                        sortable: true
                    },
                    {
                        field: 'coins_cnt',
                        title: 'Монеты',
                        sortable: true
                    },
                    {
                        field: 'gems_cnt',
                        title: 'Камни',
                        sortable: true
                    },
                    {
                        field: 'total_coins_gems',
                        title: 'Итого',
                        sortable: true
                    }
                ]],
                url: 'data/data_simple.json'
            });

            $item.on('load-success.bs.table', function() {
                updateTotalCoinsGems();
            });

        },
        updateTotalCoinsGems = options.updateTotalCoinsGems = function() {

            var data = $('#table').bootstrapTable('getData');

            var count = 0;
            for (index in data) {

                var item = data[index];
                var coins = item.coins_cnt;
                var gems = item.gems_cnt;

                var param = {};
                param.index = count++;
                param.field = 'total_coins_gems';
                param.value = coins + gems;

                $item.bootstrapTable('updateCell', param);
            }

        },
        run = options.run = function() {
            _init();
        };

    return options;
}( {}));

sortTable.run();

