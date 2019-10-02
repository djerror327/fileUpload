<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

<head>
</head>
<body>

<h1>Spring Boot file upload example</h1>

<!-- Upload file form -->
<form id="upload-file-form">
  <label for="upload-file-input">Upload your file:</label>
  <input id="upload-file-input" type="file" name="file" accept="*" />
</form>

<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous">
</script>
<script>
    $(document).ready(function() {
      $("#upload-file-input").on("change", uploadFile);
    });

    /**
     * Upload the file sending it via Ajax at the Spring Boot server.
     */
    function uploadFile() {
      $.ajax({
        url: "/upload",
        type: "POST",
        data: new FormData($("#upload-file-form")[0]),
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function () {
          alert('successful');
        },
        error: function () {
         alert('successful');
        }
      });
    } // function uploadFile
</script>

</body>
</html>
