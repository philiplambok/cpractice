def workbook(_n, k, arr)
  pages = []
  page = []
  arr.each do |chapter|
    problems_arr = (1..chapter).to_a
    problems_arr.each do |problem|
      page << problem if page.size < k

      if page.size.eql?(k)
        pages << page if page.any?
        page = []
      end
    end
    pages << page if page.any?
    page = []
  end
  # searching spescial problem
  special = 0
  pages.each_with_index do |chapters, index|
    page_number = index + 1
    chapters.each do |problem|
      special += 1 if problem.eql?(page_number)
    end
  end
  special
end

arr = [4, 2, 6, 1, 10]
k = 3
n = 5

p workbook(n, k, arr)

arr = [4, 2]
k = 3
n = 2
p workbook(n, k, arr)
