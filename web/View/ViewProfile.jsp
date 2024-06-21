<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Online - User Information</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    box-sizing: border-box;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

.avatar {
    text-align: center;
    margin-bottom: 20px;
}

.avatar-placeholder {
   
    width: 100px;
    height: 100px;
    background-color: #e0e0e0;
    border: 2px solid #ccc;
    border-radius: 50%;
    display: inline-block;
    line-height: 100px;
    color: #888;
    font-size: 14px;
    margin-bottom: 10px;
}

.choose-photo {
    display: block;
    margin: 0 auto;
    background-color: #ddd;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    border-radius: 5px;
}

.choose-photo:hover {
    background-color: #ccc;
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}

.form-group input[type="text"],
.form-group input[type="email"],
.form-group input[type="tel"] {
    width: calc(100% - 10px);
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.gender-options {
    display: flex;
    justify-content: space-around;
}

.gender-options label {
    color: #333;
}

.update-btn {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}

.update-btn:hover {
    background-color: #0056b3;
}

</style>
    
<body>
    <div class="container">
        <h2>User Information</h2>
        <div class="avatar">
            <div class="avatar-placeholder">Avatar</div>
            <button class="choose-photo">choose photo</button>
        </div>
        <form>
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <input type="text" id="fullname" value="Cao Quynh Nga" name="fullname">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" value="Ngakiki@gmail" name="email">
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" value="0987653443" name="phone">
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" value="Số nhà 5 tổ 9 Nghệ An" name="address">
            </div>
            <div class="form-group">
                <label>Gender</label>
                <div class="gender-options">
                    <label><input type="radio" name="gender" checked value="male"> Male</label>
                    <label><input type="radio" name="gender" value="female"> Female</label>
                    <label><input type="radio" name="gender" value="other"> Other</label>
                </div>
            </div>
            <button type="submit" class="update-btn">Update</button>
        </form>
    </div>
</body>
</html>
