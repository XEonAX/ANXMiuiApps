.class final enum Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$DataItemDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Id:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ie:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum If:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ig:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ih:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ii:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ij:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Ik:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum Il:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

.field private static final synthetic Im:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 105
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Id:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 106
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "SHORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ie:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 107
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->If:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 108
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "LONG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ig:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 109
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "STRING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ih:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 110
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "BYTE_ARRAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ii:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 111
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "SHORT_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ij:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 112
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "INTEGER_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ik:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 113
    new-instance v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "LONG_ARRAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Il:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 104
    const/16 v0, 0x9

    new-array v0, v0, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Id:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ie:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->If:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ig:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ih:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ii:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ij:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Ik:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v9

    sget-object v1, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Il:Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    aput-object v1, v0, v10

    sput-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Im:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    .line 104
    const-class v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    .line 104
    sget-object v0, Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->Im:[Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object v0
.end method
