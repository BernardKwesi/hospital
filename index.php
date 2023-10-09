
<?php
include_once('hms/include/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";

} ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Hospital management System </title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

    <body>

    <!-- ################# Header Starts Here#######################--->
    
      <header id="menu-jk">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOAAAADgCAMAAAAt85rTAAABaFBMVEX///8TQ2fydgkAAAAAQWkAP2sAQGoANV4AMFv8eQD5eAAAPWMAOmEAOGDR2N4AM10ALlrxawDycAAAKljk5OT19/ny8vJqamrybwDW1tbd3d3FzdXs7OxdXV0AKleNna2IiIgtLS3b4OXDw8O1tbV3i57/bAA/X3xmfZOrt8J6enqgrbqClKXNzc2pqalTboeSkpK4wsv/cgD72MP97OEcSWzjchP++PNvhJkvVHT3r4JISEgdGxtXVlbKayj6z7Zac4v0jEL4wZ8AIVNJSlz85NVAQEAWExP5xqf1lVSvZDbzfh/zhDDVbiD2pHCFWUj/uZV3UlC4ZS9gUVWVXUOoYjv1m2D/lFOwWjXOYCAAHFD/tIwxR2H/gCZOTVkRNVRuVFHZZBt+WEoAAEa8XSu9Xi91UVD/hDEAJ09TQ0shOFERUHeNVj02PFBBQE/NbCSMVCwjNj3LgU+hWD0AE023WzC6l4DesZU1Y+gjAAAgAElEQVR4nO19iV/T2NvvSWmbNEuTNqQsiQ0EupFCKdDSikCl4oKyCILjMoK8jr4Kjve9zO/ef/+eJctJutAijjP34/P5zFi6JPnm2Z/znCcA/KJf9It+0S/6Rb/oF/2iX/T/N61sby9vPsa0uby9vfKzr+fWaHX58d2TZ5EUonGH8B+RZ0/ubi3/q4GuLh88gcjG0zykRCIRidQxRSLwD/ReGkKN3L+7+W9Eubq59zSVQtASkW+HL86P3r1lonGHoszbB0fnL3a+1RFQCDOy9+8CuXLwDPEtwdd39t8xsVg8CokJEHonHosx7853diMJBPLpm+2ffd2D0crBU8y53asjBkFj+hKCybx7sYFApiJ3//EYV7eeQXSJyM4ZE7sOG40yxhwd1xHGpwf/ZFnd3kuNQ3TH7yDnBgXngYzHHrzAGJ8s/2wcPWgTMY8/POqBThAllmFEURLwX4LQjZHvdiJIVB//bCxd6HEEMq++z3SgEyRWlhmmUCzbVUG0TTMnMUwlVyxW4EdhlNF49Hw3wY+nD1Z/NqAgbSF4G0exIDpBFBihZdt6siaWLQBEhmnCf5oC07RBsiKVzQrDdWCMPTjk+fHxg5+NiaJNBO/wQRCeIIutckNgCjaGxBYB4BiGNQEwIEOzoADB6wBYFSEssdHY22PkHrd+Ni6Htp+loOq9DXFPLiQtXQMKvHaAwRQgToaR7JIG9CzDafAP1gbGa4hMYguNVo3mZZyBEMcjmz8bG6TVkxQUzgexkKBxJihmZVUvC4wKQIMVWRkAyCypZEKkJidrNXgTdKBDbiqmBgw9aTVk6gDxtzs8n7r/053GViqdqAd0T4KCyIg5CAKJHoShGKBUNEtJAHIiAqhCKS2qCKBiAVtilCq8AyqbrQCdpe9R7MFGIp26+1PhrUDpjOxT8AS5VrIUyEAAah4zk0Cr2uWCgdCwJVPKQtVjNHQvIDJBaAByM7hSKQAQ6uJZHcrpT4xuDlKRxCFDwVMKumUbpiC0AJDcd9kq0NuSqOigKsM/TJGRDWBoUOOaSDsRfg7/upHDWkjpYjQOVTG195Pgrd4f56F0UnazkQQVheVyApRQl4NQ7WwwCpnKlkCSY1jdlBgBIoM+Q4CGVWEUgIDjr2J7yliAsjaxB3U+/fSnMHFzPE2zTyqIuSpSM6FRw5feEPFFF5sQrSZjB6G1mddJW4VfbgBNYiQTGAoDjY8p+TdJMICmBOT0OMGnfoLHuAu178xnX7asKUJbB4aqmFDVoHZZKpY3vSG3kCQKBQtoySZUvyqEAw2LxMCv6xyyQTRAwwQWltia+2b8XZ1PPfmb4SHx3K157GOblm6YolCBjLMRv+QSAOUsZFUN5AqWlkzmxEJBzsrI/TcJZ4UatKujNUY0gY5ZhjguGhUTSTL8ZankKmM0ephIR/5Wh7EdSSeOPeMpcDYoKCw0EVkLyVsZXjw0HaDUrDW0KlOrKZzcEVrDN+RooQxNjpIEBcRUsyCwGfu/bFDFxjQKMkWXibF9PpL6G5OMTRi6eOIpKC0Duzh4yWIDhWWiIFscl7M0zSo15TCyAEoRsQ2yu8w0S1qWNUqWZQHsLZAvQWGCK6aRv1ERt6D6PYi711jUkzAiAdikMGoGVDlGbAIW8hWS1AVVJ7E12zK0BmPYqlLQsEoiR2OqlMOo1f82fwHNy65vPaHeqUINmg6iRzBKqWVbGasz2+tLksy1TU2Ddkk1AHKHcsaxUh7C+AY//reYmr0Uv0FXIzhLRAYf4KwAmU/N0AsK04WiHnUFKSrlsiC0YRwnMLKNI/QAxXYS4/d/PL6T8cRhMLIuwP+yBnJpDGKAZjNhk4ILaLHag89HZx8/fjw7evAWldo6C1KiIFR07FNgJFDq0N7Yi0T6hyOE+HbCmQMklAzZEJdUNZWA3kFs8bcfrz68T+WXln7/dP/ly5fPPiWW8vnUq9/230U7yhtCE1ocpW3h2MB/l9yx2H4i/eyH4zvugg9FyvDOt2qMJNLo4tF3V69SS8/2tpZXAjWI1ZXtzTdPfs+n/vP8baj8xoqlKgyJitSBYJTK/j0I9yh8NTYgiJIGeRjgXYw5f5X/fe9xHw+9unzwMp+6ClXh2GYSJsL0sdqgwXkIf6CU3k358imaRoGjriFrJWt+toOKR+/zL7cGCT+W7yZSvwXrHdmiVlZF7/BqyYtXIcIfZ0uh//PtC4uiSsaDJJhl36pHYw/+yN9/PHhhbPvuUmqfiXsHYES5apWTOgGlQJOqlyrkE2hpxn+QP1xO8d98/UMJA8pUXVURPJ2Jxj++X3ozbOi4+TL/G13X4SqaTljIQR+kqxCrw8OdHxTTrKT4unN+AZ2KtSowRMsUs8ESbjR+nvrUWSyq5oqFlvPakAs52+g8wV7+w1vqDkpEPNgyAEkYtzPNapYg3OB/RFy6GuEjTvogFEroflaLr6FugGShWKGE83nqU7ezNz4eHqrO69LnjeP/1rud4w2ESAkqPhnMUEj+pOg6QRiFUdvt5xb30/wDV4BAmUUwkwWtiK5T9zxf7F3qdxpe0iw5r1qHiQRrkdfF40Tia9L9wKR5ubqXvwp6Dc4CBmYldP6jOnaOUSYSidw2vrvjiXPn3tZgwI/zGyvTlLJFGBO77GM+LNGrCmXl9GPUeV045PnPDlq1Hkl8cQDqp+dqIUn9aOVJ/jntaaNuzCYAsy3gpJGJvkukb9mUQgPjOYhms50DLRYGoCWOEXJl15rHzvN7AcPZuEokTh1RvPgW4V/k8MvkacIH2NxJ8KdBcV3mX72ljI1m4BvIZkwYC9ZMzM34fuJ2Dc1qmt918EmomMRWQA6CAzAsc61nlHnFh2pD9j7PH1fIa3k3wm808UvznPcA6qd8JKJqodO9yZ97TIRxfBYlnUYJxbqq1cLsjB3yqdusREEFdG4qZ+PanlgDpswlq1XXOcTO8p53yjj/Vj+jqyeKB8UyUlc0SKB56AO8gJK7ceH+0NPGbf6Vl5BlYb6pFjIlZGC4Iq7/E0Nzi2q4lUqck/OxDcQ6pBECKHIlw63uxn5bco2LVfzLMSYWlEV+H8llpqpAu8C/VRHF4MvEFxN9qfoFfuMq5/zS/Mv0TnmS8lJqxcwYWhnxLws9PkqmHDW8NX+/4kUw2Lvjc8GXRluXXfF8/8zRPq2oXh47LNGyEEo9Zrei6td9yEyK+OOzU7VZhgyM8EeO7akq3/688NTxcX7fiwrZpiyiUMKyCl5NMf7i9rzh/XTEPZVdgGJkY62XNdZxD9G3vniC2EYi8WeZvFagXPLPn+M+ikiQeJ6PbLyA2hhxvYfV/sYnPpf927r0G11UZtgCsF+baLWGRBaxWxPSx6nEmasQoiBD5dEVAboly+Ff/ChPOQdkQuoq1jArtuFA6U7kk7pqIyOjwRAsEmln/COtfnrlOX3BlE2oE7IOg26hjIsH0Qd8+lZWZqAF3aAdUxYma1ahXcsQZWDiz/O0qFgKlLrDGJS4Jvei3gNagDaO1Ab0rOdQHS+LgVM/qbumRoScbYpMVgMtmO5rxFcc305As5fmXVMCw0PBUXUNJvDEvOwvBe31xQY0kmeF+NfDnqwLMTJRv+Qu/oRf5hUrdO6Ui1ApoRIG9DOMoOogSSKa+m3khtsp/oUjKVzBLpVZkeFaFtBybga6RO6i5l6bfYZwne12qF0/jPwxUtedgnvWagdCFsa/kI9GW7KsZq6AAZ4lUt+/Bnw/XXfwscTCFVHJM6sQBxh38Vms4/CAoeBLHhxdxP0+/8W1oeXXLtS7HkIJL8RVm9DGCUKN2JmN77czy56F4SytVEU2gKqWxJ87+EoqTBaI7ybW4iYEzQ05aeVr5KzphDd7KT9syxogCVocUsmyiM134rs7FZ66SS5XLamsrEBl9+td0aM80T+tfZjgD9uIAVVlvxeAtEc9uLj7pQDvoHEBhTzxp2tvTt57Jq6GVmsQMtUka4jwXo5/X0PNZirxDt9BoaiTmBfKTstd9Xnr2U/7K7SBGxBhUf6W6AZtPDX+7GTv7sHW1sHdvZOnqIu0C0z+Uq0m1RfoWIrnMO7/4SAUyqR+LjFo3QI7/BqffvNdAJ+6LoLTciTbhAm2tySS9+XjAsol/02OnXVqXzqVfrK1HLrRK8sHT8ZTHRgTu6fqBrpDCpVh/O5auQIJ2FAwkNRxTIxcxfewEDKQZLmsjRYusfJJoOGUYd9TwWBSRQz4thNmX7pfH+jy3UgYIx/ZRdHNUYO+GUtHrjsUcU0RWiGVbZI4ik9/T0vUM5eBTcNAcSaO6AE5WezqE/3V4nki0mE8x8ev6wDd3utkI/QX8eCNyDueWLSjKB7Xcf0JLyNCFqZvjm/Z1UCmxmALVxVFseLUDY6WArKhxXbD1zke2RpAfFYP0uOhH9bDDv+NY2jQohpMpNF9FmrEztT47zCkT9JOmotkk0V9dFquaTQdBcQGxvCi48oZH4I3cFPkVsjgfPM00HJSqU9XRA25EtCJpggGsBELYep7Y1+44vpAycQNHipO10iJOfaKKODF16jj//8M6d4wqrF6NxUQ0W/Y44BMQ/1CbuBq3hElKUPSJWkUfowl6UHixmnTXS+I0dr4riEmEm8RfZ7AX6mcJQ6VIvTJuS8BfEM3ma08o+WU34BRg1ZWzyORLAkfHqfIpQgNLEAclKZGAb+MfbtxASrtRKGSDYxcFkEU2sD1EPiuldrQOUTO1Wr5NIjvBi27BzQT+UPOVM9gxpc4dqqpLx0hxYqHgia32IUi0pslFdBHvCXigP7STFRpbpqYlbE/Tsh3iigJSOx+EQLi+fRGJ9yOUJrI73zeTWBWOnH3St4vtcF8ApjE5SOEkRt6iidp4iNEs1HBKmELKmlfij7wLGjhDF1GhE78brz6s3qfElOcayUOVc/hv/FCNoTZVAVRUnEPGPQUNzIzqyn+uVOqFwSuiW9kkjQ8xt5TIcx5yLd/TwPkXsDWRBI7KlUTdt29VEXZdKuYM20cNSIzc5MS4tZ4hKqhC1wN1YZwkTn68XfqexeXAYTp7wrv3wRMzZVM+8NNx87UNMNKJvVqtVSq4rJJrH6jAtt9/tCxoTJpd2ElPYltdCyQZgbTo/T/+p+RTno0PYW/m3l4b2SC/GztXpfv3fuf/00hrLeTgSv65EiUoiiyzLISyyoNrDEvbiKjUEKJExSauoVdKsOauAwTfR6I0SyOUsDU47ku1w1pjACcHnEBdv/aSPKNL6X8ZSFwScup0MoTI1RQ4A/TwhvI6ONxt1aI/rJlQeIY3CXnMtDV/sILn4FQ/8YGA2j0ADgJ9nwe8qeOCdUIK10WuvBkzsaXBGV0eMV3bShbNWwdGEzR1EkTmaOB+l8xXJwuffHxpaHzmJmdmZ+fQDSJ/z8/M7twrxPgKAK9iGmBpgwuw7oAv6FlC8uuqG2c32+mHEMqYnR47U4kdvTp0ADH+X0SphltVm2R+0iy6PfYi8cPd8/VZslQvnkAe3Z4rNEA5/GryRH3VQetUmb0ecuMKmc7kTNSzOCJIZV0WS4S5mo5Edfxh/b12ykee3khZzWzEryBmlWqkXrrEvrc/hOm3ZHDz23KS/Q8yboLUBsEIDy3D/Hr5Te0V3SX5E9br4hnzmUwR60yU8MVxHhkfNjY6SBdx8dCjYSWWdSzMkei3Ph/cI0gh0sTfCJgYHodDAKcIwDvDQIQHFBqiMtt/H4bO4zVPImtZIzOKrCMYuGL2kifDAnwPkw60U85Da9pWWWhbeKsM5onfKqql8H0qE/Ie2dIgOBZIH1KHHIVp0KzdxUlt91qKly52mayOgoeoaMYNu1N82TBrJlrF2x8dAs71ei5W0zOFL7WaYh9ylvDchAmav5x+frnuBevbRNPITRKMiMWgVUoos0YN1DCbTfQhtG7wGYrJZQRCb6JwWSqlIt382q0xqllAoRgdQM4G/oe/KZbSrvrW9Jj2aQujCd5oWgpTE1vsWK55gTc48PVuKEXpBdcBJZrOYlSnmKU3qZU0Hmvhx/sBrAbjZKjrPoA9+n6E3jznziR0YYqooUSp8AHk8LhPOFeeiPuBqEyy+GyOXaC+y+pb1X/9EyodwMHBDjaHyCKhB2qq9QZfRkFRplU2JtN4gmH60J8xh87BfsiNF9GCS1AYnP1ijaVhUNPRD1He+d2AAKPhYmvVeqUwKljMhXUfSRIrNrASnjOjw8FcNxJlThntcBpWPZsKCZD9TXQwx3SK8MYHZ0IAJwhv4XvTRnwY/j56KRDo4a//um5Cn6nQl+ZY0dFsw39VsWsWniHHkqZhrEyK07BVygCo2pXkQ8iS/9HOEwrVsqlpAbM534Q0/dwPsBHNMDZfr9Z9X2houslu5yr4LX8TZL3ylY16dwNDZfch9tXsZzi8X1SDLPNsiwn2NgaM9ErrMrtncvPp2oMrV45+PprOOJWCGBmxH3Vi/ZcIeXPTv88O7883m9h4HlSaiedC1bVbCWbJN4eJhHdcuppNbe1P2vikCj2HtkSaFvQiIpdXwOvEY97nQC1awEue76QJ6M96jH8/u84HhXLmt2oWX/JkqqjtB7GMsOY0btpsmhWcBtFGG6U81SwdU5Wb30neI0FW+sEiLja29FjigQIRoVtHFQRJRSKpqJWQFFVC7hzBprRYZazT5xAram5jXY4qIWqjD6tNtnjwCrEddKx7gIEAYCT/X/lO3sUkcK4vogBPnZ7L/BiQtIidRQYrA2TMT3jX5CYT0sKnCQIUlu3RcoLJivqPhWnXWfAHo6M3JmZRYS0cdZ9hY0MCXugNTUymWDP2rJvZjY+qoWS8+m2kxSi8n4SY0RZQPRsqGg04iaDqJvYLBZhaou94G9eAdJqcOc+QuqnPfzgoDRKHcpVQv4wRjcIk6Um1HRlq1yuSvoPo0eJYRYK3XoM2mBMKIcz51dUwOeHMYFUpUckcxOAXmpf5+iL+x2Ho5INcgpq8yLxTPTBME0zq96yGcOZSDIyRWxs4nRtx/Y4GEg2bxHgG08JAw2XJ1i6RLPapjeh1Ibpr3T9PBpGISnNVlNx4xhKChrHLsDAkcc8gwIvdxG/QIH1nBeukJhlasS1ogvw1QTWwbEQwE1XCb32WYKbxDJo+ocI04CmQPKJYXrzVpxkSciZOQmSe5feLlFfKnhuPiD8Y27UkvEATnivfEKwZrxXRMPmQgC9rNBrSMS09YEkFEBrCWILOAt6MX58cIAwG8SKrGSsYsvMlR180Xd0RVv2UqWA+boRwNGuAIEXjl4Wk4YnpZvv49jIaDBdQj3EBvYTsWEywu0UTxTQkMVmCZhu28hH7EsbrULzIhqLdXfznojeAsCnnpv4/EVR44WGTa4uhkMZZ0pE4bWJdjnE6kPUnWCUhBGxMG8WCknk7FG8F91H5lJrHx5ufNut+wwM1HtuE+B9Ko6BoeHGPq50r+CUUGiUVK6CS9I43hoqGPUByoJc0P/isjWU7kYv0RqHxSaCbYTBlY/bBPgkuHTPb2CAq3l8cQIoIYYKTLuKLu5GAGUNRRrAsCwNZ5VXqGKYPI0EEQZ7jXoAnMLBikeZxUEA7tHBGp/gD2mALJbXnCQYuHHnZgD9t3Bx7jcMsNn+cr5T97slg+urPQB2o2sB+tHoxs7l2Re13cJvE4CMktOrFXjfm3gy1FAAXSMjGK1iI1c2bdtCppgARBjtSkz22syDB/4hAOsKGkjjpvsOwIokO3s0a8yQRsZ1E7UWDLRFUZTkCuIgFYrCSO1rYhiAj6ZDNBTA3UDnEwEoWiqnZBUFZk0oERjKTbiOHhflRNYtz3kcRJT8khhGRO+ETjExlA5+u6DfJgA5XIKFqm1h/RnK0XuhGlRDxizhPmbGNTIOoV0fDsBAKj0gwPlBAJ6kXfPZ7ARIGQhUQBwqVIPBtrPgrzhVtSJVkSFkcJ4ODuIHbwTQ9YP8IV1Yc6wok8nloH0wTdtCAIcKtoHbYCHjGBB6Clw2JH7QpaxnRQO1gtsE6EYywcrhCik71cqy6BiIsjBkuuQmvGj7f6kgKFytiiZRRZ97ZW1oR2XfE/4ogL6XeKAWvfKvm9I7AaSAh85Fj4Zqbr7PXzlJZZOMbWhbNXQQ3H2AlpRPnx/6yxLhbIIA1ALpUjcjQ9KlWS+bmOqVTcCEqX78FWLEAfcyWbl08RUraGhJ9HyoksUJaSFh9ZyTKkl2A4kBziYqnw/rgVgmnA9Oj90ZGxtDtYuHY3cgrcNX9+4EaQ2+t4ZejD1E2eIUpMW1EMDlQNMMxPjf2CJsviKxqIOwacG0adiik1M2ZHV3IkiWtEjjDq7yVai36Udl9Af+EhNhI8l7D/ACk5xssyLu8hTRNoD4Dj9MB9njcVz4FU2TbBbMFrGVieOyqH2ewOTHarTtuUWAfqztZC9knYkURhXDKpUrtSwnC6iiOWTh1y3d10BZRaGCTrbtxbCrqf6VVTj29PRd59ISpMX1tbWHa2tr6+tYFKGsYiEcwVL7iAgrfDmN38MfIzFGP3oIf7ZOb8n2JHQjdiGjrZU1/PbLjxgg+Y5mVUtDJxO+p0dlQwOfEytj/AM+CMwGLEh+h9N1BnrNS5ceeUsuI9cWfr1mC/4St/1q5ErAEro0oWCULCfJxyWLIbdLukv0nLN8XFYq2NPTwlg57FpW60JjdGXbBzja8weYPBVM/EmvEJLVFyFXVGCaipa5UMvhsMtn0E8ckwI5WzOr1TIjZVHPVPSMrk7Y3urZdT3FNwPoFSyCVcNl4gbJNlBBZF/rzRssgLqrL8jSyDASFSt4GOPbPPUdmNp39YS3BNCX0GAkevBHoCVPbKOBs0OuvfhNCE33OBpZwwm4vJinhNdsXbgRQC9X4vcD+0Kf7NMdeaJpoUkXsd0hmxAcKyPkTFzSRk3uyFY5VgaTVcRbdDvt6MAAJ/r+yC9XfPt6QTf+4t5tb8pLy8SjNIZtI3GtjASKWQE3gRdx19u+q21WRb2kltB8EzZPFo9mZxyanV1YfOQBvEcDvLNItRs6P/MW6R/T/ds7ePoepu08Lhqa7rZbqda8UTfeExKscUmQLLy28QzXJt5Qhz9NVrIvgvuUPA3o4ei7Aezr6J/SR+cjl23HnpO6NmfVFEmQZIUrWM0b9fxukWY8eKcqaI2xqrIVVFgjrh5wl3xojddjYY+O32EBbvoL2KQfr/6VaOJL4r/QKJecrUO+ouGssY2hu7a3U2R8jCgKSiE5+l/NsoUcRZxULcqXeJW+ftjJwsU1ih4S6gHwHv6Q/v76Q1cSfeYdfj7eRUv0LNZDku2KOf9KcUGTH1YFkRKSlDCncGpFwzdWxGkXepU83T0+/5qNxY/9PoQ+Z+gBsM8avd/olPhSbsTYj4c7pCxDukhYvZJDQ7PscqGK3PzRDTa/nJCWZqlaclr99CRKKGJk164cLSL5SLKUIt4iwFVfQA/RyB2Ygr4m0cyTS3zbK6Ioy0nztSiiDedDN3Ih2hzniRlGfxillsIJCGD8t0Adu+CzsI8j6gKwfxvJiZ8oBRu5Vp2tks4OppKKx9nASHv4zT3uxhcZJMvNLCs4R3UaLVzSKRb2Lvr4AKddgH0bgSgLsxEoGILH7wNTJ5LVYk646daXJ2k8Y0VOqvRKsWtHXaJY2FtIH3UCNPoApLq4+C8BBoY3FqgWmnZ9w81Lj4mMMhUmQNFLuqFSq/hZYe+Ye3o4gFRDM//8gppPAr18eGsIjtNusm0Cy+h510mnVMNhMnZOu/txqJ+zKDaZmpqbczLZdZjLdhFRBHAaZsUoL4bfnJubm5pCv8wAemcINKIv6P28J1chgLWyiMOYG813OnF38AYp/pvnU231MFiegb6iv6MP6GB3R7/VsQPN69h2S74UibgcM/y2EETLqcTbbix86/ZatE7rpOmfQri9+H2RjLVJ4aujQ/MbbbcF4c2HsIRiuvGOt4ib9QYp9oF4igIausUndp+/oNg4/n/mCI0F6M4COSSUXieHmOv6vbH/S/OPOd2BEPldB+HqUrcbDnPdmw5DOEhHunEw6rBQP4Vn3/kaM/2+UYTwu8ad0fxLfG7oTQgxscGSjP7Nh24qE9vlh9gUotG0ko50NTOxD0QLC5eX2UIVzcakd7h+zwwbWv8SV8gFIojOIJvVfFcGvouklwOX3fcMDMf6JPV69tVbYkitv8rEwplfaFs61A76ANE7XPlvKgm89aazr2Dvj24MRHOSJeqiVbPPCQAac44nnPciZ07V1cvgz1qBKQg33KUc2KMcqcuhAZ0rjgkV+10f9P39OQhqQsVK9iSr6DatBYuQQSGNpG/yGJPl4LyHOhsCeJ9s6mfN3peXtGpio/vRPSrJcufsVp/ItHBvEIL7rnoYSO9vsBV7NbQB2xdRhx67myP7HSXJhcd8dFIgmewkZ7tJ7BWVVGix445RK+ORoQrNm0H2If+XuKSrhatLpMGTq/Y8BqSKWOj3MaaSrPRjIXDnMud9KbzYR1sJ66FhOan7A8vp8rMQ+47QVCBvgiCil2QOoNAXgJXluk3WDREjFft9XCIjJKLnXudh5QhdzQ4X2w8iTKeeDARx+X4QHl8/LcZeBOcePXZmc2X7SmBRbPb72KEq1/8ozpKhO28FBqQ82uN3YWkXRyFNTKeeXTdse3XraWgkEL+bNYFx8RnK6eFrxySuONNWpL7qM6rIfQXYpaboLvmbNLm7mAz3UQt5x6NXzhI7bSxNla+RMI2Pn2z2xLi6+SQVngbEH7bxVTbYet1d+gGfnLFVAvkzo9PksaMh9rVAHumKKxr6a9GntquazlDD6AM3b7r4cuGcxBQ7xzWmx1P3D8JDudCY+zfoSagdX//mjj8oqf/t3tMTsjeZcfOKsip7xHGu4zOycil8lu5U8US5QT1agbW9zx13v58gl53xjEFS6rhgF2Tkyd7B481lSJuPD/bup7uBwxz0Rhon3cvdSpEr8AS05l8V44/zKA7IQGSMZKmiZm8AAAuFSURBVBcMdSTfgLmj8WL/Ca/ooImvkR5DKdPptPsk5V6z8XDytRM2lMtuDFpzkVPPI/G10hqYgWg514nfgTObnFgwz33ozoaf2PtgHF9CDXqJF/tDj27ElNj9iofTcMERHSv5o5AFpZ5DRfn91kAmlJAmexEPJaS+jALTHe4bfJCO+g0lAdGicjzgaFGae/Uz1W5eJiLe5GoH39JzYmAUjz+UhGa9m5EcyAe6VOK8X/qT+mkn23L2mzApKqIpQwYkjmMGSBZOw7HbtbSvljWQUdDvaDe1mnhBDIzkBZmUhFJuozBAEENRQXQFXvcfI0EHh02hA6H1us5jfOhXF+dDIeTPC2QgAZpkfNmi8F3Fwne3TJUxvTcplgxEVpZ1fVDDPZ5IK0fGndBc8xBqxdP6sRvnVXZwPeN6lGgRh+onrKr1Kz+l8/ExfhbkP8WDGogkiH3jr04yJU9QHAHNlgNfsNypX4yvh6U26+DT2vCqE2dfj+t9MfI8v7HPvkMPcnf6XoD9V8FbI1xZcuSTYen42HR2GlECWpYUun46CNUE1yhhS6pUwivqripEmfd+E6J7U0qf0YzQeLWofLnsmHno0+FH5cK0ohsw2Dt1f+pHW8veLPFQEmS0sHGveW9YKmUBB6Sk6gkp9Bq1LhbKcyHxV5/CgQqWUGzW9JyKp2nXIwmngw9tEIjU8Rga2RkIDwF+7LjCrfyRU9RTOtQr2ZQpC0qZjCGoLLljiYHY/fYkXfsTOw6NotZUKKDnLfzawL3PsbbKfv2MOvX5/c9flDaeeM87yfXFDs/vtEJH38u7bdVqN/NRUn0BLXGdt2AAagrX3Zaku4U59jwfqL2W/kzwG051REejdXYqQLP0Eh7grJSSBuGxOwU+qfAJTwkJrX56743Y7n7xfvksw11bqOhKliJd9zvLfaBN9G3qJSWmJfnzN3fgVAkmUe64BrRjbZfz33YVr3J5/EWi7chm/sod7CtdW4SoiOI1laYeZHNKt/yKtjaZpvs8jeh/luiCqI2e/InJhHLpgAIXu55DQHMivI2P1l9FWslXT/Lu02HFWt/6AiIooEPEMAFqiVyXbqSJMfqviiemR/kT2ta4NzUH47Zzx8UUNnindRBqwAbvP9omwIHNpQ/efPRCkDcPO52BoQzrAimKdlHDzKP1wBAK0zWmkIn5LqsgleME78ZAxR3/0TbmeSLxtcutX3mZ8h7umw1l8FOZzhbMgjBoltSFrM67o91bB2COfkeX3Hg19qD+e0cxrRzn/nTjrDJ6zI37PJH2F1XqALj6Jn/lPulNCJfQHj7svESTvZEFdamkcIFSeEabXkN7AgLbAbWK++CeKDSnncU0y23UAObp549unQWggSZhOljynyzFNoPqZ8xlpjsQ6lm2HH5vKGqwWfou41PML66FVp9t73Gk0fhl/mXPkqihV0u9s9LVg6VX/nPfOxYZZuBdDSPUxP6FxAGoIHIBO70AJqbAo3moDvS71KP6IMRuDz+7llb28q/8h/TJzZB30Mam0D/T0wuBqxPkYWPQMGmMIAREaQoa0ZHJzPpCUN9LguRDfP5+6boJ4kFa3bxPP7xO4LqsESEOAiOwwyQnZW/qIXyyOCFYC5hFAMeAFur31MpZLzmOxh78lv/9YMD2qtXNk6X354z3FElBLYadnzY7aYCZhaAThhZC7r9YNhjpqlgJvmOgnTpz98KtWEbRfzJwNB4/+iPP3+2sF4Zoe+tl/v0L6smDqPmv41trZAU/IJ4gmcVzAr6fStlQNX9iGoAxcG8CLIS+aRUV6uHH8di7q/foKaDb3VGuoCeA5j/sM9RzFSG8TqGbfQgWR8Ho/GzAeBuyMHiZqT/ZChuISjUtMzcJHk2A9TBCMJqTqZpXNBpjjq5epfL8S1wV3d7eXtneXl7e3Hpz8mkp//4/+28DzzcVspUuOrUwATJgKtwADY2D9L0GxqMyxwW9zcIcUsQpQ5vtaFfSbIbz2UieMsw8eH7524f3KYfev/rjav/oLXoKL42OlXPdAuu5EQOg4GI2qBIF4fq1wMEpJ4cQQhP66M7EzMjY/FRnNKwXs8Fn2KKnRMfjcfT4ZOef8POiBUktdPWQE4tg7N7U/OgsAklRRVS/34BS1AgjhBycBXguR5f4CWbpLVYONPH1I4FVCl0eCoppbY2EaFNB/rWk7MB17MEIIgxFvgtgdgR5yJHRua4Xp5ebCtkB1xecxAnFUu+caOHeFIx/7ywGVbDIZocuwlxHOU4O578zSGpmR8D0WI+E06iWCwrHSkI3mIIocdla0e6tSTNQwednRmbA5KPgHWiwym04wBCVObYVemsdTWGcA9DlG737k62q3ShICsdxMu5kwWteCldrlbuF2xRNrI3cMbSZ2ZGZmeD3imy3SOf7ycxKofwzszg3MgYmRzLQrF6zWQ4YFhrfjkjXLeP6GsPiozkwNzUytwjWQkMQWz+Ef4hstaOCkIGuaPYemJuAOdSteSVIMyOZ0ZGZ+RljfRqEqgoVKfuD8EHbmBXYzjhq6h6MMGanRsDYws2KPx2UAaPTc2BtEsxlQMjRak1RvXX74pMlCZ3meR1ew+LC7LpmQL9xzabAQWhh6t60MTkyMYGGIYYCmFEYit+yfwhSpikqncXEibmJ+ekplOpnFhevmcl4LU1NouAaBvPwtRESe50TblxCG5SKnNQMuy0DyuhDGJfegRYH3FmbvbE2TkAZR87VgL5hZKxj/x16Mt8txmc9CJ6F7ayXzozMQ5cxibqx58FIRxA+CI1OrKN0FnfjwzB+riPMbShS8zYtWS9KSmK4ngdpchbMwbAKLN4Dkw/XwOhY//moYTIWFhZnZxD3oN2EstCpy0ZT4m5eAR2KtIos1TpFZf4OytdgiDqVgQnAHTA5tbhwbV2aHHBqERphaDwR60dHpmcWOuf/Qgt+++FZT7Lh2bo4o1Ho+kdQ2XR9cXJmHu2+Qvvl+m1lzcxPTEG5XIDYZhYWwMIj6HAmZ7oocVERme8pgA5LVo1lw4UvRJmFdQBzxFnoGqdRqjGvoWh1AZrWyVkaqDY5mQHG3Brk1QyM9KYAGJsenQHayMLMXBc10xmRa92Skx2Uymp4VduhyTEoZyhCdZVwYRpoC3Nz2sIamBiZG0NyPDYyPwNvAAzUMxqYewQWkZWC3xxdW+wm1LmsqPxQ79eVrCZME3q1992ZRwBn5pAujY2BeQgFyusiGJnXkOROoD9HFiZHZtYhX6bnsPJOLUx1DROqgiQXBlPmWyabE7lCd78ExWz+IXYZMPVfXFyYQ5kVtLIjE6NoPM4oClzXx+BNGB1Ff0GeT3RUXQgZFUXg/j7rEjp5KysojV6uyVicQtGIBr2jgQFCNzeyiDGj98D6HHg0ixJnsNDbpZQVQan8FPYR0puymC33U39tClWI50cQKhieaGN4eRHCzIyMQp+3MNcvtLMliWV+dGx2DZUYVlLKfQMMpFkzY7PrqMgxj6IwGIqtL8C4fGK+7+/QoW+ldv2dZEusxOWuFSPEZiMDxXVWAwMkvKBUg8KR+5t9Qw9CEJXibfphzWZkUW38ROULEbweSWnelq+ycgorZf9B8BBVC4rEKrlbYGO1kJVYtvzPgofIashQGWvmd2VseoOFB2na/wzdC5NWQjdfqZVvyEe9IXISm71Vbb5tsswa1B9OLpaGZKRlVxSZlRXvsQT/XLLsAsTIKkLR7l/ZdUlL2kUR/kTmKn2K+P8oMkpFRmFZmeOaRbtq9YSpWbrdaHJo32m2lqv+43kXIKvUqGXRpcucjEbvm6WqrieTFnpCqV4tmeVigZEVVM7n1FpjWIn+h5CGGCQpHFQumSxKEJLRU0rhO5zCNhu2/u/iXCcZyapdLlaaNUFEUgudiVBroscpVJP/EpUbnAbZCv6LftEv+kW/6Bf9ol/0i37RL/pX0P8D4N+cOoObc1MAAAAASUVORK5CYII=" alt="Logo" width="40" height="40" class="d-inline-block align-middle mr-2">
            KTU Clinic
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#services">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about_us">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact_us">Contact Us</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="loginsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Logins
                    </a>
                    <div class="dropdown-menu" aria-labelledby="loginsDropdown">
                        <a class="dropdown-item" href="hms/user-login.php">Patient Login</a>
                        <a class="dropdown-item" href="hms/nurse/index.php">Nurse Login</a>
                        <a class="dropdown-item" href="Pharmacy-Management/index.php">Pharmacy Login</a>
                        <a class="dropdown-item" href="hms/admin">Admin Login</a>
                        <!-- Add more login options as needed -->
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
    </header>
    
  <!--  ************************* Logins ************************** -->
    
     <div class="container-fluid position-relative  text-center" style="background-image: url('hms/assets/images/school_clinic.JPG'); background-size: cover; background-position: center; color: #fff; height: 100vh;">
         <div class="position-absolute w-100 h-100" style="background-color: rgba(128, 128, 128, 0.5);"></div>
        <!-- <div class="lc-block mb-4">
            <div editable="rich">
                <h2 class="display-2 fw-bold">Level up your <span class="text-primary">WordPress page!</span></h2>
            </div>
        </div>
        <div class="lc-block col-lg-6 mx-auto mb-5">
            <div editable="rich">

                <p class="lead">Quickly design and customize responsive mobile-first sites with Bootstrap</p>
            </div>
        </div>

        <div class="lc-block d-grid gap-2 d-sm-flex justify-content-sm-center mb-5"> <a class="btn btn-primary btn-lg px-4 gap-3" href="#" role="button">Try it free</a>
            <a class="btn btn-outline-secondary btn-lg px-4" href="#" role="button">Learn more</a>
        </div> -->
    </div>

    <!-- ################# Our Departments Starts Here#######################--->

    <section id="services" class="key-features department">
        <div class="container">
            <div class="inner-title">s

                <h2>Our Key Features</h2>
                <p>Take a look at some of our key features</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-heartbeat"></i>
                        <h5>Cardiology</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-ribbon"></i>
                        <h5>Orthopaedic</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                       <i class="fab fa-monero"></i>
                        <h5>Neurologist</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-capsules"></i>
                        <h5>Pharma Pipeline</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="fas fa-prescription-bottle-alt"></i>
                        <h5>Pharma Team</h5>
                    </div>
                </div>



                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <i class="far fa-thumbs-up"></i>
                        <h5>High Quality treatments</h5>

                    </div>
                </div>
            </div>






        </div>

    </section>
    
    
  
    
    <!--  ************************* About Us Starts Here ************************** -->
        
    <section id="about_us" class="about-us">
        <div class="row no-margin">
            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter hdpe">
                <img src="assets/images/gallery/a.jpg" class="img-responsive">
            </div>
            <div class="col-sm-6 abut-yoiu">
                <h3>About Our Hospital</h3>
                <p>
                    Welcome to Koforidua Technical University Hospital, your trusted healthcare partner in the heart of Koforidua, Ghana. We're dedicated to your well-being, combining compassionate care with advanced medical practices.
                </p>
                <br>
                <p>
                    As part of Koforidua Technical University, we're shaping the future of healthcare through education and research. We're not just a hospital; we're your neighbors. Our outreach programs aim to make our community healthier.
                </p>
                <br>
                <p>
                    Choose Koforidua Technical University Hospital for quality care, close to home. Your health, our priority.
                </p>
            </div>
        </div>
    </section>    
    
    
        
     <!--  ************************* Contact Us Starts Here ************************** -->
    
    <section id="contact_us" class="contact-us-single">
        <div class="row no-margin">

            <div  class="col-sm-12 cop-ck">
                <form method="post">
                <h2 >Contact Form</h2>
                    <div class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter Name :</label></div>
                        <div class="col-sm-8"><input type="text" placeholder="Enter Name" name="fullname" class="form-control input-sm" required ></div>
                    </div>
                    <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Email Address :</label></div>
                        <div class="col-sm-8"><input type="text" name="emailid" placeholder="Enter Email Address" class="form-control input-sm"  required></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Mobile Number:</label></div>
                        <div class="col-sm-8"><input type="text" name="mobileno" placeholder="Enter Mobile Number" class="form-control input-sm" required ></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter  Message:</label></div>
                        <div class="col-sm-8">
                          <textarea rows="5" placeholder="Enter Your Message" class="form-control input-sm" name="description" required></textarea>
                        </div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                         <button class="btn btn-success btn-sm" type="submit" name="submit">Send Message</button>
                        </div>
                </div>
            </form>
            </div>
     
        </div>
    </section>
    
    
    
    
    
    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="container">
            <div class="row">
       
                <div class="col-md-6 col-sm-12">
                    <h2>Useful Links</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about" href="#about">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#services">Services</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#logins">Logins</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#gallery">Gallery</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="contact" href="#contact">Contact us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
           
Contact Us<br>
 South West, K0foridua-110096,Ghana</h6><br>
Phone: 0557705122<br>
Email: docisaac@gmail.com
Timing: 9 am To 8 Pm
</div>
<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
while ($row=mysqli_fetch_array($ret)) {
?>


                        <?php  echo $row['PageDescription'];?> <br>
                        Phone: <?php  echo $row['MobileNumber'];?> <br>
                        Email: <a href="mailto:<?php  echo $row['Email'];?>" class=""><?php  echo $row['Email'];?></a><br>
                        Timing: <?php  echo $row['OpenningTime'];?>
                    </address>

        <?php } ?>





                </div>
            </div>
        </div>
        

    </footer>
    <div class="copy">
            <div class="container">
       KTU  Hospital Management System
                
     
            </div>

        </div>
    
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="assets/js/script.js"></script>



</html>