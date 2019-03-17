.class Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;
.super Ljava/util/AbstractSet;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 345
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 351
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->clear()V

    .line 352
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    const/4 v4, 0x0

    .line 359
    instance-of v5, p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-nez v5, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 363
    check-cast v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .line 364
    .local v0, "entry":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<***>;"
    iget-object v5, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$100(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v1

    .line 365
    .local v1, "entry2":Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;, "Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 369
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, "value2":Ljava/lang/Object;
    if-nez v2, :cond_2

    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 355
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$000(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    const/4 v1, 0x0

    .line 375
    instance-of v0, p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    if-nez v0, :cond_0

    .line 378
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    move-object v0, p1

    check-cast v0, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$200(Lcn/kuaipan/android/utils/TwoKeyHashMap;Ljava/lang/Object;Ljava/lang/Object;)Lcn/kuaipan/android/utils/TwoKeyHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.EntrySetImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$EntrySetImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$000(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    return v0
.end method
