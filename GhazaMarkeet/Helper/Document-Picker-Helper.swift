//
//  Document-Picker-Helper.swift
//  ERide
//
//  Created by Mapple.pk on 17/02/2023.
//

import Foundation
import UIKit

enum FileType {
    case doc
    case image
}

protocol DocumentPickerResponder {
    func selectedDocument(url: String, fileType:FileType)
}

class DocumentPickerHelper: NSObject, UIDocumentPickerDelegate {
    
    static let share = DocumentPickerHelper()
    
    let docsTypes = [
        "public.image",
        "public.jpeg",
        "public.jpeg-2000",
        "public.camera-raw-image",
        "com.apple.macpaint-image",
        "public.png",
        "public.xbitmap-image",
        "com.apple.quicktime-image",
        "com.adobe.pdf",
    ]
    var delegate: DocumentPickerResponder?
    
    private override init() {
    }
    
    func openDocumentPicker(view: UIViewController) {
        let documentPicker = UIDocumentPickerViewController(documentTypes: docsTypes, in: .import)
        documentPicker.delegate = self
        documentPicker.allowsMultipleSelection = true
        view.present(documentPicker, animated: true, completion: nil)
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        if let fileUrl = urls.first {
            let fileEntension = (fileUrl.absoluteString.components(separatedBy: ".")).last
            if fileEntension == "pdf" {
                delegate?.selectedDocument(url: fileUrl.absoluteString, fileType: .doc)
            } else {
                delegate?.selectedDocument(url: fileUrl.absoluteString, fileType: .image)
            }
        }
    }
    
}

