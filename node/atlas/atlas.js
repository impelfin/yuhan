var axios = require('axios');
var data = JSON.stringify({
    "collection": "things",
    "database": "test",
    "dataSource": "Cluster0",
    "projection": {
        "_id": 1
    }
});

var config = {
    method: 'post',
    url: 'https://data.mongodb-api.com/app/data-noamn/endpoint/data/beta',
    headers: {
      'Content-Type': 'application/json',
      'Access-Control-Request-Headers': '*',
      'api-key': 'nhNwIk0hQU9flPzu9CokJNA6fu1ogVFlAzNipNt9PRxNjTb7Nh49Rv0E57VvbDi6',
    },
    data: data
};

axios(config)
    .then(function (response) {
        console.log(JSON.stringify(response.data));
    })
    .catch(function (error) {
        console.log(error);
    });
