.class public final enum Lcom/miui/gallery/model/PeopleContactInfo$Relation;
.super Ljava/lang/Enum;
.source "PeopleContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/PeopleContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/model/PeopleContactInfo$Relation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

.field public static final enum userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;


# instance fields
.field private final mRelationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string/jumbo v1, "unknown"

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 108
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "friend"

    invoke-direct {v0, v1, v5, v5}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 109
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "classmate"

    invoke-direct {v0, v1, v6, v6}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 110
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "collegue"

    invoke-direct {v0, v1, v7, v7}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 111
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "family"

    invoke-direct {v0, v1, v8, v8}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 112
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "child"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 113
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string v1, "myself"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 114
    new-instance v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    const-string/jumbo v1, "userDefine"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->$VALUES:[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "relationType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    .line 121
    return-void
.end method

.method public static fromRelationType(I)Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    .locals 1
    .param p0, "relationType"    # I

    .prologue
    .line 128
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_0

    .line 129
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->friend:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 143
    :goto_0
    return-object v0

    .line 130
    :cond_0
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_1

    .line 131
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->classmate:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_2

    .line 133
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->collegue:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_3

    .line 135
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->family:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_4

    .line 137
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->child:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 138
    :cond_4
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_5

    .line 139
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 140
    :cond_5
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    iget v0, v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    if-ne p0, v0, :cond_6

    .line 141
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->userDefine:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0

    .line 143
    :cond_6
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->unknown:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/model/PeopleContactInfo$Relation;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->$VALUES:[Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-virtual {v0}, [Lcom/miui/gallery/model/PeopleContactInfo$Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    return-object v0
.end method


# virtual methods
.method public getRelationType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->mRelationType:I

    return v0
.end method
