import UIKit
import Foundation

guard let fileURL = Bundle.main.url(forResource: "brandB", withExtension: "csv") else {
    fatalError("ファイルが見つからない")
}
/// 2.ファイルの読み込み
guard let fileContents = try? String(contentsOf: fileURL) else {
    fatalError("ファイルの読み込みができません")
}

var str = ".34!44fgf)(gg#$qwe3"
var x = fileContents.components(separatedBy: "\n")
var brands = [String]()
for i in 0 ..< x.count {
    print(x[i])
    x[i].removeAll(where: { $0 == "/" }) //iからcharを削除
    x[i].removeAll(where: { $0 == "\r" }) //iからcharを削除
   
    //x[i].removeAll(where: { $0 == " " }) //iからcharを削除
//    let newStr = x[i].replacingOccurrences(of: "", with: "")
//    let xx = newStr.replacingOccurrences(of: "", with: "")
 //print(xx)
   // print(newStr)
    str = x[i].replacingOccurrences(of: "[^[0-9a-zA-z]]", with: "", options: .regularExpression)
    brands.append(str)
    //brands.append(str.lowercased())
}
//print(brands)
var brandNames = [String]()
var brandString = [String]()
for i in x {
    let brandDetail = i.components(separatedBy: ",")
    brandNames.append(brandDetail[1])
    brandString.append(brandDetail[0])
}
for i in 0..<brands.count {
   // print("case ."+brands[i]+": return \""+x[i]+"\"")
    print("case ."+brands[i]+": return \""+brandNames[i]+"\"")
    
}

for i in 0..<brands.count {
   // print("case ."+brands[i]+": return \""+x[i]+"\"")
    print("case "+brands[i]+" = \""+brandString[i]+"\"")
    
}
for i in 0..<brands.count {
   // print("case ."+brands[i]+": return \""+x[i]+"\"")
    print("ItemBrands.Brand."+brands[i]+",")
    
}

