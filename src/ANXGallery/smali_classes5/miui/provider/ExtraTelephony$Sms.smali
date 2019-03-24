.class public final Lmiui/provider/ExtraTelephony$Sms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;
.implements Lmiui/provider/ExtraTelephony$DeletableSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Sms$Intents;,
        Lmiui/provider/ExtraTelephony$Sms$UrlRiskyType;,
        Lmiui/provider/ExtraTelephony$Sms$FakeCellType;
    }
.end annotation


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "account"

.field public static final ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final ADVANCED_SEEN:Ljava/lang/String; = "advanced_seen"

.field public static final B2C_NUMBERS:Ljava/lang/String; = "b2c_numbers"

.field public static final B2C_TTL:Ljava/lang/String; = "b2c_ttl"

.field public static final BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final BLOCK_TYPE:Ljava/lang/String; = "block_type"

.field public static final FAKE_CELL_TYPE:Ljava/lang/String; = "fake_cell_type"

.field public static final FAVORITE_DATE:Ljava/lang/String; = "favorite_date"

.field public static final MX_ID:Ljava/lang/String; = "mx_id"

.field public static final MX_STATUS:Ljava/lang/String; = "mx_status"

.field public static final OUT_TIME:Ljava/lang/String; = "out_time"

.field public static final SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final TIMED:Ljava/lang/String; = "timed"

.field public static final URL_RISKY_TYPE:Ljava/lang/String; = "url_risky_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
