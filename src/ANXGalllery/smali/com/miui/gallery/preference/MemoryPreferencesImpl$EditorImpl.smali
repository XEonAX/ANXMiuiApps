.class public final Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;
.super Ljava/lang/Object;
.source "MemoryPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/preference/MemoryPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditorImpl"
.end annotation


# instance fields
.field private mClear:Z

.field private final mEditLock:Ljava/lang/Object;

.field private final mModified:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;


# direct methods
.method constructor <init>(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mClear:Z

    .line 122
    return-void
.end method

.method private commitToMemory()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 203
    .local v5, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v7}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$000(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v2, 0x1

    .line 204
    .local v2, "hasListeners":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .restart local v4    # "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v7}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$000(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/WeakHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 208
    .restart local v5    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    :cond_1
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v7}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$100(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 209
    :try_start_0
    iget-object v9, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    iget-boolean v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mClear:Z

    if-eqz v7, :cond_3

    .line 212
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v7}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 213
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v7}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 215
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mClear:Z

    .line 218
    :cond_3
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    .local v3, "k":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 224
    .local v6, "v":Ljava/lang/Object;
    if-eq v6, p0, :cond_5

    if-nez v6, :cond_6

    .line 225
    :cond_5
    iget-object v10, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v10}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 228
    iget-object v10, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v10}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :goto_1
    if-eqz v2, :cond_4

    .line 240
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "k":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7

    .line 246
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 230
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "k":Ljava/lang/String;
    .restart local v6    # "v":Ljava/lang/Object;
    :cond_6
    :try_start_3
    iget-object v10, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v10}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 231
    iget-object v10, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v10}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "existingValue":Ljava/lang/Object;
    if-eqz v1, :cond_7

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 236
    .end local v1    # "existingValue":Ljava/lang/Object;
    :cond_7
    iget-object v10, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->this$0:Lcom/miui/gallery/preference/MemoryPreferencesImpl;

    invoke-static {v10}, Lcom/miui/gallery/preference/MemoryPreferencesImpl;->access$200(Lcom/miui/gallery/preference/MemoryPreferencesImpl;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "k":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :cond_8
    iget-object v7, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 245
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    invoke-direct {p0, v5, v4}, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->notifyListeners(Ljava/util/Set;Ljava/util/List;)V

    .line 249
    return-void
.end method

.method private notifyListeners(Ljava/util/Set;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;>;"
    .local p2, "keysModified":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl$1;-><init>(Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;Ljava/util/List;Ljava/util/Set;)V

    .line 268
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 269
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->commitToMemory()V

    .line 198
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mClear:Z

    .line 185
    monitor-exit v1

    return-object p0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commit()Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->commitToMemory()V

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 167
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    monitor-exit v1

    return-object p0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 159
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v1

    return-object p0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v1

    return-object p0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 151
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    monitor-exit v1

    return-object p0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    monitor-exit v1

    return-object p0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mEditLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/preference/MemoryPreferencesImpl$EditorImpl;->mModified:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v1

    return-object p0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
