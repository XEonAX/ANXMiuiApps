.class public final Lmiui/provider/ExtraContacts$AccountSyncState;
.super Ljava/lang/Object;
.source "ExtraContacts.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountSyncState"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PHONE_NUMBER:Ljava/lang/String; = "number"

.field public static final WATER_MARK:Ljava/lang/String; = "water_mark"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "account_sync_state"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraContacts$AccountSyncState;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
