package com.ss2fit.ss2backend.utils;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public class PageableObject {
    public static Pageable getPage(int page, int size, String sortOption, String sortOrder) {
        Pageable pageable = null;
        if (sortOrder.equals("asc")) {
            pageable = PageRequest.of(page, size, Sort.by(sortOption).ascending());
        } else {
            pageable = PageRequest.of(page, size, Sort.by(sortOption).descending());
        }

        return pageable;
    }
}
