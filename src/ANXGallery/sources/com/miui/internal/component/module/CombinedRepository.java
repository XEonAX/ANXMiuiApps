package com.miui.internal.component.module;

import java.io.File;
import miui.module.Repository;

public class CombinedRepository extends Repository {
    private Repository[] dw;

    public CombinedRepository(Repository... repositoryArr) {
        this.dw = repositoryArr;
    }

    public boolean contains(String str) {
        for (Repository contains : this.dw) {
            if (contains.contains(str)) {
                return true;
            }
        }
        return false;
    }

    public String fetch(File file, String str) {
        for (Repository repository : this.dw) {
            if (repository.contains(str)) {
                return repository.fetch(file, str);
            }
        }
        return null;
    }
}
