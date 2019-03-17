.class Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;
.super Ljava/util/AbstractCollection;
.source "TwoKeyHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/kuaipan/android/utils/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesCollectionImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lcn/kuaipan/android/utils/TwoKeyHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcn/kuaipan/android/utils/TwoKeyHashMap;

    .prologue
    .line 516
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iput-object p1, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 522
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->clear()V

    .line 523
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 534
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0, p1}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 526
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-virtual {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->createValueCollectionIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 518
    .local p0, "this":Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;, "Lcn/kuaipan/android/utils/TwoKeyHashMap<TE;TK;TV;>.ValuesCollectionImpl;"
    iget-object v0, p0, Lcn/kuaipan/android/utils/TwoKeyHashMap$ValuesCollectionImpl;->this$0:Lcn/kuaipan/android/utils/TwoKeyHashMap;

    invoke-static {v0}, Lcn/kuaipan/android/utils/TwoKeyHashMap;->access$000(Lcn/kuaipan/android/utils/TwoKeyHashMap;)I

    move-result v0

    return v0
.end method
