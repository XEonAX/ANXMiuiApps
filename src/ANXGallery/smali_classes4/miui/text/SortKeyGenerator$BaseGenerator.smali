.class Lmiui/text/SortKeyGenerator$BaseGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/SortKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseGenerator"
.end annotation


# instance fields
.field final synthetic GP:Lmiui/text/SortKeyGenerator;


# direct methods
.method private constructor <init>(Lmiui/text/SortKeyGenerator;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lmiui/text/SortKeyGenerator$BaseGenerator;->GP:Lmiui/text/SortKeyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 64
    return-object p1
.end method
