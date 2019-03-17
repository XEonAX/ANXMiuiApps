.class public final enum Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
.super Ljava/lang/Enum;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/library/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LibraryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/gallery/assistant/library/Library$LibraryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_ABI_UNAVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_DEFAULT:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_DOWNLOADING:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

.field public static final enum STATE_NO_LIBRARY_INFO:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DEFAULT:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 41
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_NO_LIBRARY_INFO"

    invoke-direct {v0, v1, v4}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NO_LIBRARY_INFO:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 42
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_NOT_DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 43
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_DOWNLOADING"

    invoke-direct {v0, v1, v6}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DOWNLOADING:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 44
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_ABI_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_ABI_UNAVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 45
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_AVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 46
    new-instance v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    const-string v1, "STATE_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DEFAULT:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NO_LIBRARY_INFO:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_NOT_DOWNLOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_DOWNLOADING:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_ABI_UNAVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_AVAILABLE:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->STATE_LOADED:Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->$VALUES:[Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    return-object v0
.end method

.method public static values()[Lcom/miui/gallery/assistant/library/Library$LibraryStatus;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->$VALUES:[Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    invoke-virtual {v0}, [Lcom/miui/gallery/assistant/library/Library$LibraryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/gallery/assistant/library/Library$LibraryStatus;

    return-object v0
.end method
