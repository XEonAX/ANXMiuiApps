.class public Lmiui/text/SortKeyGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;,
        Lmiui/text/SortKeyGenerator$NameStyle;,
        Lmiui/text/SortKeyGenerator$BaseGenerator;
    }
.end annotation


# static fields
.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/text/SortKeyGenerator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lmiui/text/SortKeyGenerator$1;

    invoke-direct {v0}, Lmiui/text/SortKeyGenerator$1;-><init>()V

    sput-object v0, Lmiui/text/SortKeyGenerator;->s:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lmiui/text/SortKeyGenerator$NameStyle;->values()[Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    const/4 v1, 0x0

    array-length v0, v0

    new-array v0, v0, [Lmiui/text/SortKeyGenerator$BaseGenerator;

    iput-object v0, p0, Lmiui/text/SortKeyGenerator;->GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    .line 49
    iget-object v0, p0, Lmiui/text/SortKeyGenerator;->GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v2, Lmiui/text/SortKeyGenerator$NameStyle;->GS:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v2}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v2

    new-instance v3, Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-direct {v3, p0, v1}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    aput-object v3, v0, v2

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lmiui/text/SortKeyGenerator;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;
    .locals 2

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lmiui/text/SortKeyGenerator;->GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 229
    if-nez v0, :cond_0

    .line 230
    sget-object v1, Lmiui/text/SortKeyGenerator$NameStyle;->GZ:Lmiui/text/SortKeyGenerator$NameStyle;

    if-ne p1, v1, :cond_0

    .line 231
    new-instance v0, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    .line 232
    iget-object v1, p0, Lmiui/text/SortKeyGenerator;->GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    invoke-virtual {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result p1

    aput-object v0, v1, p1

    .line 235
    :cond_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lmiui/text/SortKeyGenerator;->GO:[Lmiui/text/SortKeyGenerator$BaseGenerator;

    sget-object v0, Lmiui/text/SortKeyGenerator$NameStyle;->GS:Lmiui/text/SortKeyGenerator$NameStyle;

    invoke-virtual {v0}, Lmiui/text/SortKeyGenerator$NameStyle;->ordinal()I

    move-result v0

    aget-object v0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 227
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lmiui/text/SortKeyGenerator;
    .locals 1

    .line 56
    sget-object v0, Lmiui/text/SortKeyGenerator;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/SortKeyGenerator;

    return-object v0
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 245
    invoke-static {p1}, Lmiui/text/SortKeyGenerator$NameStyle;->K(Ljava/lang/String;)Lmiui/text/SortKeyGenerator$NameStyle;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0}, Lmiui/text/SortKeyGenerator;->a(Lmiui/text/SortKeyGenerator$NameStyle;)Lmiui/text/SortKeyGenerator$BaseGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
