//
//  AlertItem.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/19.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
    var alert: Alert {
        Alert(title: title, message: message, dismissButton: dismissButton)
    }
}

struct AlertContext {
    //MARK: -MapView Errors
    static let unableTogetLocations = AlertItem(title: Text("Locations Error"), message: Text("GPSの情報を取得できません。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationRestricted = AlertItem(title: Text("Locations Restricted"), message: Text("Locations Restricted。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationDenied = AlertItem(title: Text("Locations Denied"), message: Text("Location Denied。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationDisabled = AlertItem(title: Text("Locations Service Disabled"), message: Text("Locations Service Disabled。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let checkedInCount = AlertItem(title: Text("checkedInCount Service Disabled"), message: Text("checkedInCount Service Disabled。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    //MARK: -ProfileView Errors
    static let invalidProfile = AlertItem(title: Text("Invalid Profile"), message: Text("Invalid Profile。必要事項を入力して、もう一度お願いします"), dismissButton: .default(Text("OK")))
    
    static let noUserRecord = AlertItem(title: Text("No User Record"), message: Text("No User Record。ログインしてください"), dismissButton: .default(Text("OK")))
    
    
    static let createProfileSuccess = AlertItem(title: Text("Profile Created Successfully"), message: Text("プロファイルが作成されました"), dismissButton: .default(Text("OK")))
    
    static let createProfileFailure = AlertItem(title: Text("Profile Created Failed"), message: Text("プロファイルの作成が失敗しました"), dismissButton: .default(Text("OK")))
    
    static let unableToGetProfile = AlertItem(title: Text("Unable to get Profile"), message: Text("プロファイルの取得が失敗しました"), dismissButton: .default(Text("OK")))
    
    static let updateProfileSuccess = AlertItem(title: Text("Update Profile Success"), message: Text("プロファイルの更新が成功しました"), dismissButton: .default(Text("OK")))
    
    static let updateProfileFailure = AlertItem(title: Text("Update Profile Failed"), message: Text("プロファイルの更新が失敗しました"), dismissButton: .default(Text("OK")))
    
    
    //MARK: -LocationDetailView Errors
    static let invalidPhoneNumber = AlertItem(title: Text("Invalid Phone Number"), message: Text("Invalid Phone Number。電話番号を確認して、もう一度お願いします"), dismissButton: .default(Text("OK")))
    
    static let unableToGetCheckInStatus = AlertItem(title: Text("Server Error"), message: Text("サーバーエラー、もう一度お願いします"), dismissButton: .default(Text("OK")))
    
    static let unableToCheckInOrOut = AlertItem(title: Text("Server Error"), message: Text("check in/outができませんでした、もう一度お願いします"), dismissButton: .default(Text("OK")))
    
    static let unableToGetCheckedInProfiles = AlertItem(title: Text("Server Error"), message: Text("check ユーザーのチェックインプロフィールが取得できませんでした、もう一度お願いします"), dismissButton: .default(Text("OK")))
}

