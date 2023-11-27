$(document).ready(function() {
    // Add an event listener for each nav item
    $("#nav-home-tab").click(function() {
        changeEndPage("lifestyle");
    });

    $("#nav-profile-tab").click(function() {
        changeEndPage("showbiz");
    });

    $("#nav-contact-tab").click(function() {
        changeEndPage("health");
    });

    $("#nav-last-tab").click(function() {
        changeEndPage("sports");
    });

    $("#nav-Sports").click(function() {
        changeEndPage("technology");
    });

    // Function to change the value of the endPage variable
    function changeEndPage(page) {
        var endPage = page;
        // You can perform further actions based on the selected page value
        console.log("Selected page: " + endPage);
    }
});