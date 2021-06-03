import Foundation

final class FillWithColor {
    
    func fillWithColor(_ image: [[Int]], _ row: Int, _ column: Int, _ newColor: Int) -> [[Int]] {
        _ = image[row][column]
        
        
        let color: Int = image[row][column]
                if color == newColor { return image }
                let rowCount: Int = image.count
                let colCount: Int = image[0].count
                var newImage: [[Int]] = image
                var queue: [(Int, Int)] = []
                queue.append((row, column))
                while queue.count > 0 {
                    let (rowIndex, colIndex) = queue.removeLast()
                    newImage[rowIndex][colIndex] = newColor
                    if rowIndex > 0 && newImage[rowIndex - 1][colIndex] == color { queue.append((rowIndex - 1, colIndex)) }
                    if colIndex > 0 && newImage[rowIndex][colIndex - 1] == color { queue.append((rowIndex, colIndex - 1)) }
                    if rowIndex < (rowCount - 1) && newImage[rowIndex + 1][colIndex] == color { queue.append((rowIndex + 1, colIndex)) }
                    if colIndex < (colCount - 1) && newImage[rowIndex][colIndex + 1] == color { queue.append((rowIndex, colIndex + 1)) }
                }
                return newImage
            }
        
        /*
         
         Algorithm: Say color is the color of the starting pixel. Let's floodfill the starting pixel: we change the color of that pixel to the new color, then check the 4 neighboring pixels to make sure they are valid pixels of the same color, and of the valid ones, we floodfill those, and so on.
         
         We can use a function dfs to perform a floodfill on a target pixel.
         
        
         */
        
      //  [[]]}
}
