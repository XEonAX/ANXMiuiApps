package com.nexstreaming.kminternal.kinemaster.config;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.HashMap;
import java.util.Map;

public class ExclusionList implements Serializable {
    private static final long serialVersionUID = 1;
    private transient File a = null;
    private Map<String, Integer> m_refs = null;

    private ExclusionList(File file) {
        this.a = file;
        this.m_refs = new HashMap();
    }

    public static ExclusionList exclusionListBackedBy(File file) {
        ExclusionList exclusionList;
        ExclusionList exclusionList2 = null;
        if (file.exists()) {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
                exclusionList = (ExclusionList) objectInputStream.readObject();
                try {
                    objectInputStream.close();
                } catch (OptionalDataException e) {
                } catch (StreamCorruptedException e2) {
                    exclusionList2 = exclusionList;
                    exclusionList = exclusionList2;
                } catch (FileNotFoundException e3) {
                    exclusionList2 = exclusionList;
                    exclusionList = exclusionList2;
                } catch (ClassNotFoundException e4) {
                    exclusionList2 = exclusionList;
                    exclusionList = exclusionList2;
                } catch (IOException e5) {
                    exclusionList2 = exclusionList;
                    exclusionList = exclusionList2;
                }
            } catch (OptionalDataException e6) {
                exclusionList = null;
            } catch (StreamCorruptedException e7) {
                exclusionList = exclusionList2;
            } catch (FileNotFoundException e8) {
                exclusionList = exclusionList2;
            } catch (ClassNotFoundException e9) {
                exclusionList = exclusionList2;
            } catch (IOException e10) {
                exclusionList = exclusionList2;
            }
        } else {
            exclusionList = null;
        }
        if (exclusionList == null) {
            return new ExclusionList(file);
        }
        exclusionList.a = file;
        return exclusionList;
    }

    public synchronized void add(String str) {
        Integer num = (Integer) this.m_refs.get(str);
        if (num == null) {
            this.m_refs.put(str, Integer.valueOf(1));
        } else {
            this.m_refs.put(str, Integer.valueOf(num.intValue() + 1));
        }
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.a));
            objectOutputStream.writeObject(this);
            objectOutputStream.close();
        } catch (FileNotFoundException e) {
        } catch (IOException e2) {
        }
    }

    public synchronized void remove(String str) {
        Integer num = (Integer) this.m_refs.get(str);
        if (num != null) {
            if (num.intValue() == 1) {
                this.m_refs.remove(str);
            } else {
                this.m_refs.put(str, Integer.valueOf(num.intValue() - 1));
            }
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.a));
                objectOutputStream.writeObject(this);
                objectOutputStream.close();
            } catch (FileNotFoundException e) {
            } catch (IOException e2) {
            }
        }
    }

    public synchronized boolean isExcluded(String str) {
        boolean z;
        Integer num = (Integer) this.m_refs.get(str);
        if (num == null || num.intValue() <= 0) {
            z = false;
        } else {
            z = true;
        }
        return z;
    }
}
