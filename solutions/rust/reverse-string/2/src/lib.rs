extern crate unicode_segmentation;
use unicode_segmentation::UnicodeSegmentation;

pub fn reverse(input: &str) -> String {
    let y: String = input.graphemes(true).rev().collect();
    y
}
