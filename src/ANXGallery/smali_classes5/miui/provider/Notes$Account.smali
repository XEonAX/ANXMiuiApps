.class public interface abstract Lmiui/provider/Notes$Account;
.super Ljava/lang/Object;
.source "Notes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Notes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Account"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 437
    const-string v0, "content://notes/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
