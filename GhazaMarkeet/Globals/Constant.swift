//
//  Constant.swift
//  BrainFit
//
//  Created by Mapple.pk on 01/04/2022.
//
import AVFoundation
import Foundation
import UIKit

class Constant {
    
    static var guestUserToken = "eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzIyLCJmaXJzdF9uYW1lIjoiR3Vlc3QiLCJsYXN0X25hbWUiOiJVc2VyIiwicGhvbmUiOiIrMTExMTExMTExMSIsImVtYWlsIjoidXNlckBndWVzdC5jb20iLCJkb2IiOm51bGwsImFkZHJlc3MiOm51bGwsInNvY2lhbF9tZWRpYV90b2tlbiI6bnVsbCwic29jaWFsX21lZGlhX3BsYXRlZm9ybSI6bnVsbCwiaW1hZ2VfdXJsIjpudWxsLCJzY29yZXMiOiIxMCIsInBvc3RhbF9jb2RlIjpudWxsLCJmY21fdG9rZW4iOiIiLCJvdHAiOiI2NjIxIiwic3RyaXBlX2N1c3RvbWVyX2lkIjpudWxsLCJyZWZlcnJhbF9jb2RlIjoiM2RiNmUyMzktMWViYS00NThkLWE0YTItZGU1NWZjOGEzNjFkIiwicmVmZXJyYWxfaW52aXRlcyI6MCwicmVmZXJyYWxfY29pbnMiOjAsInJlZmVyYWxfaWQiOm51bGwsInN0YXR1cyI6IkFDVElWRSIsInBhcmVudF9pZCI6bnVsbCwiY3JlYXRlZEF0IjoiMjAyMi0wNC0yOFQxMDozMjo0OC4wMDBaIiwidXBkYXRlZEF0IjoiMjAyMi0wNC0yOFQxMDozNTozMy4wMDBaIiwiY291bnRyeV9pZCI6bnVsbCwic3RhdGVfaWQiOm51bGwsIlVzZXJQbGFuU3RhdHVzZXMiOlt7ImlkIjo4NDQsInVzZXJfaWQiOjMyMiwiaW1wcm92ZW1lbnRfcGxhbl9pZCI6MSwic2Vzc2lvbl9pZCI6bnVsbCwidGFza19pZCI6bnVsbCwic3RhdHVzIjoiUEVORElORyIsImNyZWF0ZWRBdCI6IjIwMjItMDQtMjhUMTA6MzI6NDguMDAwWiIsInVwZGF0ZWRBdCI6IjIwMjItMDQtMjhUMTA6MzI6NDguMDAwWiJ9LHsiaWQiOjg0NSwidXNlcl9pZCI6MzIyLCJpbXByb3ZlbWVudF9wbGFuX2lkIjoyLCJzZXNzaW9uX2lkIjpudWxsLCJ0YXNrX2lkIjpudWxsLCJzdGF0dXMiOiJQRU5ESU5HIiwiY3JlYXRlZEF0IjoiMjAyMi0wNC0yOFQxMDozMjo0OC4wMDBaIiwidXBkYXRlZEF0IjoiMjAyMi0wNC0yOFQxMDozMjo0OC4wMDBaIn0seyJpZCI6ODQ2LCJ1c2VyX2lkIjozMjIsImltcHJvdmVtZW50X3BsYW5faWQiOjMsInNlc3Npb25faWQiOm51bGwsInRhc2tfaWQiOm51bGwsInN0YXR1cyI6IlBFTkRJTkciLCJjcmVhdGVkQXQiOiIyMDIyLTA0LTI4VDEwOjMyOjQ4LjAwMFoiLCJ1cGRhdGVkQXQiOiIyMDIyLTA0LTI4VDEwOjMyOjQ4LjAwMFoifV0sIkNvdW50cnkiOm51bGwsIlN0YXRlIjpudWxsfQ.qWbSuQMsPbJl69BaP1S8-fPmzvFTbWuTrQCIpWeSN3g"
    
    
    static let Login_Type = "Login_Type"
    
    static let robotoBold = "Roboto-Bold"
    static let robotoMedium = "Roboto-Medium"
    static let robotoRegular = "Roboto-Regular"
    static let interRegular = "Inter-Regular"
    
    // Other's
    static let PhoneNumberText = "Phone No"
    static let EmailText = "Email"
    
    static let languagesList = ["English", "Arabic", "Turkish", "Spanish", "French"]
    //MARK: --------------- UIVIEW NAVIGATION TITLE'S ----------------
    static let forgotPasswordTitle = "Forgot Password?"
    static let verificationCodeTitle = "Verification Code"
    static let newPasswordTitle = "New Password"
    
    
    // MARK: ---------- MESSAGE'S ----------
    static let UploadFileStudentMessage = "If you are a Student then Please also Upload your Student ID"
    static let notEnoughAmount = "Not enough amount in the wallet."
    static let fileNotFound = "File cannot be found"
    
    // MARK: ---------- CELL'S IDENTIFIER'S ----------
    static let jdsCell = "JdsCell"
    static let numberPadCell = "NumberPadCell"
    static let paymentCardCell = "PaymentCardCell"
    
    
    // MARK: ---------- UI COMPONENT'S STRING's ----------
    
    static let BestPrice = "Best Price".localized()
    static let Youwill = "You will find all your favorite deals at the best prices only on Gazamarket".localized()
    static let Login = "Login".localized()
    static let SignUp = "SIGN UP".localized()
    static let LoginAccount = "Login Account".localized()
    static let HelloWelcome = "Hello, Welcome Back to Gazamarket".localized()
    static let Email = "Email".localized()
    static let EnterEmail = "Enter Email".localized()
    static let Password = "Password".localized()
    static let EnterPassword = "Enter Password".localized()
    static let ForgotPassword = "Forgot Password".localized()
    static let OopsYour = "Oops ! Your password is not correct".localized()
    static let PleaseEnter = "Please enter your email address to receive a verfication code".localized()
    static let VerifyYour = "Verify your email".localized()
    static let PleaseEnterDigit = "Please enter the 4 digit code sent to".localized()
    static let Verify = "Verify".localized()
    static let ResendCode = "Resend code".localized()
    static let send = "SEND".localized()
    static let CreateNew = "Create new password".localized()
    static let YourPassword = "Your password must be different from previously used password".localized()
    static let newPassword = "new password".localized()
    static let confirmPassword = "confirm password".localized()
    static let update = "update".localized()
    static let Name = "Name".localized()
    static let EnterFull = "Enter full name".localized()
    static let phoneNumber = "phone number".localized()
    static let enterPhone = "enter phone number".localized()
    static let email = "email".localized()
    static let enterEmail = "enter email".localized()
    static let password = "password".localized()
    static let enterPassword = "enter password".localized()
    static let enterConfirmed = "enter confirmed password".localized()
    static let alreadyHave = "Already have an account? Login".localized()
    static let SignupAccount = "Signup account".localized()
    static let PhoneNumber = "Phone number".localized()
    static let currentLocation = "current location".localized()
    static let SearchAnything = "Search anything".localized()
    static let categories = "categories".localized()
    static let newProducts = "new products".localized()
    static let Home = "Home".localized()
    static let chat = "chat".localized()
    static let Profile = "Profile".localized()
    static let selectLocation = "select location".localized()
    static let cancel = "Cancel".localized()
    static let save = "Save".localized()
    static let Details = "Details".localized()
    static let SearchCategories = "Search categories".localized()
    static let filter = "filter".localized()
    static let reset = "reset".localized()
    static let Locations = "Locations".localized()
    static let priceFrom = "price from".localized()
    static let priceTo = "price to".localized()
    static let apply = "apply".localized()
    static let category = "category".localized()
    static let postAd = "post ad".localized()
    static let productName = "product name".localized()
    static let brandName = "brand name".localized()
    static let productDescription = "product description".localized()
    static let writeAbout = "write about your product...".localized()
    static let price = "price".localized()
    static let adress = "adress".localized()
    static let post = "post".localized()
    static let images = "images".localized()
    static let editProfile = "edit profile".localized()
    static let address = "address".localized()
    static let myAds = "my ads".localized()
    static let privacyPolicy = "privacy policy".localized()
    static let logout = "logout".localized()
    static let viewAll = "View All".localized()
    static let edit = "Edit".localized()
    static let delete = "Delete".localized()
    
    
    
    
}

