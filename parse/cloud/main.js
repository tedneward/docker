// Parse Server Cloud code
Parse.Cloud.define('helloCloudCode', function(request, response) {
  response.success('Hi, how are you?');
});
