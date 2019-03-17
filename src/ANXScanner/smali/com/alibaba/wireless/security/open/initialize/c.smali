.class public Lcom/alibaba/wireless/security/open/initialize/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aa2d4b45c16efec52c37ea3d701390ba07dccb6d35defb45029d6d5249a7bcfe"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "15035b30c918dd03f393f1047ef70f6e65793832ed8db61137879450c10aa30e"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "be51a4a6a8d8031a096f5438259dc8e7196411606ffc16df49bd40c3c5b353ab"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "5.4.114"

    return-object v0
.end method
