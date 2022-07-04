

import Foundation
import UIKit


extension String {

    public func isIncludeChinese() -> Bool {
        for ch in self.unicodeScalars {
            // 中文字符范围：0x4e00 ~ 0x9fff
            if (0x4e00 < ch.value && ch.value < 0x9fff) {
                return true
            }
        }
        return false
    }
    
    
    public func transformToPinyin() -> String {
        let stringRef = NSMutableString(string: self) as CFMutableString
        // 转换为带音标的拼音
        CFStringTransform(stringRef,nil, kCFStringTransformToLatin, false);
        // 去掉音标
        CFStringTransform(stringRef, nil, kCFStringTransformStripCombiningMarks, false);
        let pinyin = stringRef as String;
        
        return pinyin
    }
    
    
    public func transformToPinyinWithoutBlank() -> String {
        var pinyin = self.transformToPinyin()
        // 去掉空格
        pinyin = pinyin.replacingOccurrences(of: " ", with: "")
        return pinyin
    }
    
    
    public func getPinyinHead() -> String {
        // 字符串转换为首字母大写
        let pinyin = self.transformToPinyin().capitalized
        var headPinyinStr = ""
        
        // 获取所有大写字母
        for ch in pinyin {
            if ch <= "Z" && ch >= "A" {
                headPinyinStr.append(ch)
            }
        }
        return headPinyinStr
    }

}


