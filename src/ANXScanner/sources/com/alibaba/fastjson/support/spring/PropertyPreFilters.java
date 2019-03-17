package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;
import java.util.ArrayList;
import java.util.List;

public class PropertyPreFilters {
    private List<MySimplePropertyPreFilter> filters = new ArrayList();

    public class MySimplePropertyPreFilter extends SimplePropertyPreFilter {
        public MySimplePropertyPreFilter() {
            super(new String[0]);
        }

        public MySimplePropertyPreFilter(String... properties) {
            super(properties);
        }

        public MySimplePropertyPreFilter(Class<?> clazz, String... properties) {
            super(clazz, properties);
        }

        public MySimplePropertyPreFilter addExcludes(String... filters) {
            for (Object add : filters) {
                getExcludes().add(add);
            }
            return this;
        }

        public MySimplePropertyPreFilter addIncludes(String... filters) {
            for (Object add : filters) {
                getIncludes().add(add);
            }
            return this;
        }
    }

    public MySimplePropertyPreFilter addFilter() {
        MySimplePropertyPreFilter filter = new MySimplePropertyPreFilter();
        this.filters.add(filter);
        return filter;
    }

    public MySimplePropertyPreFilter addFilter(String... properties) {
        MySimplePropertyPreFilter filter = new MySimplePropertyPreFilter(properties);
        this.filters.add(filter);
        return filter;
    }

    public MySimplePropertyPreFilter addFilter(Class<?> clazz, String... properties) {
        MySimplePropertyPreFilter filter = new MySimplePropertyPreFilter(clazz, properties);
        this.filters.add(filter);
        return filter;
    }

    public List<MySimplePropertyPreFilter> getFilters() {
        return this.filters;
    }

    public void setFilters(List<MySimplePropertyPreFilter> filters) {
        this.filters = filters;
    }

    public MySimplePropertyPreFilter[] toFilters() {
        return (MySimplePropertyPreFilter[]) this.filters.toArray(new MySimplePropertyPreFilter[0]);
    }
}
