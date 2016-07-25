$(document).on('turbolinks:load', function() {
    $('#timer').timer({
        countdown: true,
        duration: '3m'
    });
});
