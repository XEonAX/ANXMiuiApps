.class public Lmiui/yellowpage/AntispamCategory;
.super Ljava/lang/Object;
.source "AntispamCategory.java"


# instance fields
.field private mCustomName:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mId:I

.field private mNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNames:Ljava/lang/String;

.field private mOrder:I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "names"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "order"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    .line 19
    iput-object p2, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    .line 20
    iput p3, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    .line 21
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    iput-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "namesArray":[Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 26
    .local v4, "nameEntry":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "nameArray":[Ljava/lang/String;
    aget-object v6, v5, v1

    .line 28
    .local v6, "language":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 29
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 30
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    .line 32
    :cond_1
    iget-object v8, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .end local v4    # "nameEntry":Ljava/lang/String;
    .end local v5    # "nameArray":[Ljava/lang/String;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "namesArray":[Ljava/lang/String;
    :cond_2
    :goto_1
    iput-object p4, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    .line 36
    iput p5, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "names"    # Ljava/lang/String;
    .param p3, "icon"    # Ljava/lang/String;
    .param p4, "order"    # I

    .line 40
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/yellowpage/AntispamCategory;-><init>(ILjava/lang/String;ILjava/lang/String;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public getCategoryAllNames()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNames:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 59
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lmiui/yellowpage/AntispamCategory;->isUserCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mCustomName:Ljava/lang/String;

    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    return-object v0

    .line 51
    :cond_1
    iget-object v1, p0, Lmiui/yellowpage/AntispamCategory;->mNameMap:Ljava/util/HashMap;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getCategoryType()I
    .locals 1

    .line 63
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mType:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lmiui/yellowpage/AntispamCategory;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 71
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mOrder:I

    return v0
.end method

.method public isUserCustom()Z
    .locals 2

    .line 67
    iget v0, p0, Lmiui/yellowpage/AntispamCategory;->mId:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
