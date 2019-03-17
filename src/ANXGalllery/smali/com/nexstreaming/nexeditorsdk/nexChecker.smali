.class public final Lcom/nexstreaming/nexeditorsdk/nexChecker;
.super Ljava/lang/Object;
.source "nexChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/nexeditorsdk/nexChecker$nexCheckerListener;
    }
.end annotation


# static fields
.field static final UHD_HEIGHT:I = 0x870

.field static final UHD_WIDTH:I = 0xf00

.field private static mChecker:Lcom/nexstreaming/checkcaps/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUHD(Lcom/nexstreaming/nexeditorsdk/nexChecker$nexCheckerListener;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/nexstreaming/checkcaps/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nexstreaming/checkcaps/a;-><init>(Z)V

    sput-object v0, Lcom/nexstreaming/nexeditorsdk/nexChecker;->mChecker:Lcom/nexstreaming/checkcaps/a;

    .line 67
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexChecker;->mChecker:Lcom/nexstreaming/checkcaps/a;

    new-instance v1, Lcom/nexstreaming/nexeditorsdk/nexChecker$1;

    invoke-direct {v1, p0}, Lcom/nexstreaming/nexeditorsdk/nexChecker$1;-><init>(Lcom/nexstreaming/nexeditorsdk/nexChecker$nexCheckerListener;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/checkcaps/a;->a(Lcom/nexstreaming/checkcaps/a$a;)V

    .line 98
    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexChecker;->mChecker:Lcom/nexstreaming/checkcaps/a;

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/checkcaps/a;->a(II)V

    .line 99
    return-void
.end method
