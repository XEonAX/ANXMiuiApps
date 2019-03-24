.class public Lmiui/net/MimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Cy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Cz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/net/MimeUtils;->Cy:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/net/MimeUtils;->Cz:Ljava/util/Map;

    .line 34
    const-string v0, "application/andrew-inset"

    const-string v1, "ez"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "application/dsptype"

    const-string v1, "tsp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "application/futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "application/hta"

    const-string v1, "hta"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "application/mac-binhex40"

    const-string v1, "hqx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "application/mac-compactpro"

    const-string v1, "cpt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "application/mathematica"

    const-string v1, "nb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "application/msaccess"

    const-string v1, "mdb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "application/oda"

    const-string v1, "oda"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "application/ogg"

    const-string v1, "ogg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "application/pdf"

    const-string v1, "pdf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "application/pgp-keys"

    const-string v1, "key"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "application/pgp-signature"

    const-string v1, "pgp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "application/pics-rules"

    const-string v1, "prf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "application/rar"

    const-string v1, "rar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "application/rdf+xml"

    const-string v1, "rdf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "application/rss+xml"

    const-string v1, "rss"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "application/zip"

    const-string v1, "zip"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "application/vnd.android.package-archive"

    const-string v1, "apk"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "application/vnd.cinderella"

    const-string v1, "cdy"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "application/vnd.ms-pki.stl"

    const-string v1, "stl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "application/vnd.oasis.opendocument.database"

    const-string v1, "odb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "application/vnd.oasis.opendocument.formula"

    const-string v1, "odf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const-string v1, "odg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    const-string v1, "otg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "application/vnd.oasis.opendocument.image"

    const-string v1, "odi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v1, "ods"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v1, "ots"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "application/vnd.oasis.opendocument.text"

    const-string v1, "odt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    const-string v1, "odm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    const-string v1, "ott"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    const-string v1, "oth"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "application/vnd.google-earth.kml+xml"

    const-string v1, "kml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "application/vnd.google-earth.kmz"

    const-string v1, "kmz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "application/msword"

    const-string v1, "doc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "application/msword"

    const-string v1, "dot"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v1, "docx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v1, "dotx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "application/vnd.ms-excel"

    const-string v1, "xls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "application/vnd.ms-excel"

    const-string v1, "xlt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v1, "xlsx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v1, "xltx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "ppt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "pot"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "pps"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v1, "pptx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v1, "potx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v1, "ppsx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "application/vnd.rim.cod"

    const-string v1, "cod"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "application/vnd.smaf"

    const-string v1, "mmf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "application/vnd.stardivision.calc"

    const-string v1, "sdc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "application/vnd.stardivision.draw"

    const-string v1, "sda"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "application/vnd.stardivision.impress"

    const-string v1, "sdd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "application/vnd.stardivision.impress"

    const-string v1, "sdp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "application/vnd.stardivision.math"

    const-string v1, "smf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "application/vnd.stardivision.writer"

    const-string v1, "sdw"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "application/vnd.stardivision.writer"

    const-string v1, "vor"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "application/vnd.stardivision.writer-global"

    const-string v1, "sgl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "application/vnd.sun.xml.calc"

    const-string v1, "sxc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "application/vnd.sun.xml.calc.template"

    const-string v1, "stc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "application/vnd.sun.xml.draw"

    const-string v1, "sxd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "application/vnd.sun.xml.draw.template"

    const-string v1, "std"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "application/vnd.sun.xml.impress"

    const-string v1, "sxi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "application/vnd.sun.xml.impress.template"

    const-string v1, "sti"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "application/vnd.sun.xml.math"

    const-string v1, "sxm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "application/vnd.sun.xml.writer"

    const-string v1, "sxw"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "application/vnd.sun.xml.writer.global"

    const-string v1, "sxg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "application/vnd.sun.xml.writer.template"

    const-string v1, "stw"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "application/vnd.visio"

    const-string v1, "vsd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "application/x-abiword"

    const-string v1, "abw"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "application/x-apple-diskimage"

    const-string v1, "dmg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "application/x-bcpio"

    const-string v1, "bcpio"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "application/x-bittorrent"

    const-string v1, "torrent"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "application/x-cdf"

    const-string v1, "cdf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "application/x-cdlink"

    const-string v1, "vcd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "application/x-chess-pgn"

    const-string v1, "pgn"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "application/x-cpio"

    const-string v1, "cpio"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "application/x-debian-package"

    const-string v1, "deb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "application/x-debian-package"

    const-string v1, "udeb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "application/x-director"

    const-string v1, "dcr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "application/x-director"

    const-string v1, "dir"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "application/x-director"

    const-string v1, "dxr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "application/x-dms"

    const-string v1, "dms"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "application/x-doom"

    const-string v1, "wad"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "application/x-dvi"

    const-string v1, "dvi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "application/x-flac"

    const-string v1, "flac"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "application/x-font"

    const-string v1, "pfa"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "application/x-font"

    const-string v1, "pfb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "application/x-font"

    const-string v1, "gsf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "application/x-font"

    const-string v1, "pcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "application/x-font"

    const-string v1, "pcf.Z"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "application/x-freemind"

    const-string v1, "mm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "application/x-futuresplash"

    const-string v1, "spl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "application/x-gnumeric"

    const-string v1, "gnumeric"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "application/x-go-sgf"

    const-string v1, "sgf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "application/x-graphing-calculator"

    const-string v1, "gcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "application/x-gtar"

    const-string v1, "gtar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "application/x-gtar"

    const-string v1, "tgz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "application/x-gtar"

    const-string v1, "taz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "application/x-hdf"

    const-string v1, "hdf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "application/x-ica"

    const-string v1, "ica"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "application/x-internet-signup"

    const-string v1, "ins"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "application/x-internet-signup"

    const-string v1, "isp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "application/x-iphone"

    const-string v1, "iii"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "application/x-iso9660-image"

    const-string v1, "iso"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "application/x-jmol"

    const-string v1, "jmz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "application/x-kchart"

    const-string v1, "chrt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "application/x-killustrator"

    const-string v1, "kil"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "application/x-koan"

    const-string v1, "skp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "application/x-koan"

    const-string v1, "skd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "application/x-koan"

    const-string v1, "skt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "application/x-koan"

    const-string v1, "skm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "application/x-kpresenter"

    const-string v1, "kpr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "application/x-kpresenter"

    const-string v1, "kpt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "application/x-kspread"

    const-string v1, "ksp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "application/x-kword"

    const-string v1, "kwd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "application/x-kword"

    const-string v1, "kwt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "application/x-latex"

    const-string v1, "latex"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "application/x-lha"

    const-string v1, "lha"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "application/x-lzh"

    const-string v1, "lzh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "application/x-lzx"

    const-string v1, "lzx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "application/x-maker"

    const-string v1, "frm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "application/x-maker"

    const-string v1, "maker"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "application/x-maker"

    const-string v1, "frame"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "application/x-maker"

    const-string v1, "fb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "application/x-maker"

    const-string v1, "book"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "application/x-maker"

    const-string v1, "fbdoc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "application/x-mif"

    const-string v1, "mif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "application/x-ms-wmd"

    const-string v1, "wmd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "application/x-ms-wmz"

    const-string v1, "wmz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "application/x-msi"

    const-string v1, "msi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "application/x-ns-proxy-autoconfig"

    const-string v1, "pac"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "application/x-nwc"

    const-string v1, "nwc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "application/x-object"

    const-string v1, "o"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "application/x-oz-application"

    const-string v1, "oza"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "application/x-pkcs12"

    const-string v1, "p12"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "application/x-pkcs12"

    const-string v1, "pfx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "application/x-pkcs7-certreqresp"

    const-string v1, "p7r"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "application/x-pkcs7-crl"

    const-string v1, "crl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "application/x-quicktimeplayer"

    const-string v1, "qtl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "application/x-shar"

    const-string v1, "shar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "application/x-shockwave-flash"

    const-string v1, "swf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "application/x-stuffit"

    const-string v1, "sit"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "application/x-sv4cpio"

    const-string v1, "sv4cpio"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "application/x-sv4crc"

    const-string v1, "sv4crc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "application/x-tar"

    const-string v1, "tar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "application/x-texinfo"

    const-string v1, "texinfo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "application/x-texinfo"

    const-string v1, "texi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "application/x-troff"

    const-string v1, "t"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "application/x-troff"

    const-string v1, "roff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "application/x-troff-man"

    const-string v1, "man"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "application/x-ustar"

    const-string v1, "ustar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "application/x-wais-source"

    const-string v1, "src"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "application/x-wingz"

    const-string v1, "wz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "application/x-webarchive"

    const-string v1, "webarchive"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "application/x-webarchive-xml"

    const-string v1, "webarchivexml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "application/x-x509-ca-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "application/x-x509-user-cert"

    const-string v1, "crt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "application/x-xcf"

    const-string v1, "xcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "application/x-xfig"

    const-string v1, "fig"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "application/xhtml+xml"

    const-string v1, "xhtml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "audio/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "audio/amr"

    const-string v1, "amr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "audio/basic"

    const-string v1, "snd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "audio/midi"

    const-string v1, "mid"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "audio/midi"

    const-string v1, "midi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "audio/midi"

    const-string v1, "kar"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "audio/midi"

    const-string v1, "xmf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "audio/mobile-xmf"

    const-string v1, "mxmf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "audio/mpeg"

    const-string v1, "mpga"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "audio/mpeg"

    const-string v1, "mpega"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "audio/mpeg"

    const-string v1, "mp2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "audio/mpeg"

    const-string v1, "mp3"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "audio/mpeg"

    const-string v1, "m4a"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "audio/mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "audio/prs.sid"

    const-string v1, "sid"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "audio/x-aiff"

    const-string v1, "aif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "audio/x-aiff"

    const-string v1, "aiff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "audio/x-aiff"

    const-string v1, "aifc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "audio/x-gsm"

    const-string v1, "gsm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "audio/x-mpegurl"

    const-string v1, "m3u"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "audio/x-ms-wax"

    const-string v1, "wax"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "rm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ram"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "audio/x-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "audio/x-scpls"

    const-string v1, "pls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "audio/x-sd2"

    const-string v1, "sd2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "audio/x-wav"

    const-string v1, "wav"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "image/bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "image/gif"

    const-string v1, "gif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "image/ico"

    const-string v1, "cur"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "image/ico"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "image/ief"

    const-string v1, "ief"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "image/jpeg"

    const-string v1, "jpeg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "image/jpeg"

    const-string v1, "jpg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "image/jpeg"

    const-string v1, "jpe"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "image/pcx"

    const-string v1, "pcx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "image/png"

    const-string v1, "png"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "image/svg+xml"

    const-string v1, "svg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "image/svg+xml"

    const-string v1, "svgz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "image/tiff"

    const-string v1, "tiff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "image/tiff"

    const-string v1, "tif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "image/vnd.djvu"

    const-string v1, "djvu"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "image/vnd.djvu"

    const-string v1, "djv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "image/vnd.wap.wbmp"

    const-string v1, "wbmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "image/x-cmu-raster"

    const-string v1, "ras"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "image/x-coreldraw"

    const-string v1, "cdr"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "image/x-coreldrawpattern"

    const-string v1, "pat"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "image/x-coreldrawtemplate"

    const-string v1, "cdt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "image/x-corelphotopaint"

    const-string v1, "cpt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "image/x-icon"

    const-string v1, "ico"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "image/x-jg"

    const-string v1, "art"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "image/x-jng"

    const-string v1, "jng"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "image/x-ms-bmp"

    const-string v1, "bmp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "image/x-photoshop"

    const-string v1, "psd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "image/x-portable-anymap"

    const-string v1, "pnm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "image/x-portable-bitmap"

    const-string v1, "pbm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "image/x-portable-graymap"

    const-string v1, "pgm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "image/x-portable-pixmap"

    const-string v1, "ppm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "image/x-rgb"

    const-string v1, "rgb"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "image/x-xbitmap"

    const-string v1, "xbm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "image/x-xpixmap"

    const-string v1, "xpm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "image/x-xwindowdump"

    const-string v1, "xwd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "model/iges"

    const-string v1, "igs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "model/iges"

    const-string v1, "iges"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "model/mesh"

    const-string v1, "msh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "model/mesh"

    const-string v1, "mesh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "model/mesh"

    const-string v1, "silo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "text/calendar"

    const-string v1, "ics"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "text/calendar"

    const-string v1, "icz"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "text/comma-separated-values"

    const-string v1, "csv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "text/css"

    const-string v1, "css"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "text/html"

    const-string v1, "htm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "text/html"

    const-string v1, "html"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "text/h323"

    const-string v1, "323"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "text/iuls"

    const-string v1, "uls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "text/mathml"

    const-string v1, "mml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "text/plain"

    const-string v1, "txt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "text/plain"

    const-string v1, "asc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "text/plain"

    const-string v1, "text"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "text/plain"

    const-string v1, "diff"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "text/plain"

    const-string v1, "po"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "text/richtext"

    const-string v1, "rtx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "text/rtf"

    const-string v1, "rtf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "text/texmacs"

    const-string v1, "ts"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "text/text"

    const-string v1, "phps"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "text/tab-separated-values"

    const-string v1, "tsv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "text/xml"

    const-string v1, "xml"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "text/x-bibtex"

    const-string v1, "bib"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "text/x-boo"

    const-string v1, "boo"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "text/x-c++hdr"

    const-string v1, "h++"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "text/x-c++hdr"

    const-string v1, "hpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "text/x-c++hdr"

    const-string v1, "hxx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "text/x-c++hdr"

    const-string v1, "hh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "text/x-c++src"

    const-string v1, "c++"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "text/x-c++src"

    const-string v1, "cpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "text/x-c++src"

    const-string v1, "cxx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "text/x-chdr"

    const-string v1, "h"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "text/x-component"

    const-string v1, "htc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "text/x-csh"

    const-string v1, "csh"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "text/x-csrc"

    const-string v1, "c"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "text/x-dsrc"

    const-string v1, "d"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "text/x-haskell"

    const-string v1, "hs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "text/x-java"

    const-string v1, "java"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "text/x-literate-haskell"

    const-string v1, "lhs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "text/x-moc"

    const-string v1, "moc"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "text/x-pascal"

    const-string v1, "p"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "text/x-pascal"

    const-string v1, "pas"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "text/x-pcs-gcd"

    const-string v1, "gcd"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "text/x-setext"

    const-string v1, "etx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "text/x-tcl"

    const-string v1, "tcl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "text/x-tex"

    const-string v1, "tex"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "text/x-tex"

    const-string v1, "ltx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "text/x-tex"

    const-string v1, "sty"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "text/x-tex"

    const-string v1, "cls"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "text/x-vcalendar"

    const-string v1, "vcs"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "text/x-vcard"

    const-string v1, "vcf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "video/3gpp"

    const-string v1, "3gpp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "video/3gpp"

    const-string v1, "3gp"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "video/3gpp"

    const-string v1, "3g2"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "video/dl"

    const-string v1, "dl"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "video/dv"

    const-string v1, "dif"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "video/dv"

    const-string v1, "dv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "video/fli"

    const-string v1, "fli"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "video/m4v"

    const-string v1, "m4v"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "video/mpeg"

    const-string v1, "mpeg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "video/mpeg"

    const-string v1, "mpg"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "video/mpeg"

    const-string v1, "mpe"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "video/mp4"

    const-string v1, "mp4"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "video/mpeg"

    const-string v1, "VOB"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "video/quicktime"

    const-string v1, "qt"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "video/quicktime"

    const-string v1, "mov"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "video/vnd.mpegurl"

    const-string v1, "mxu"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "video/x-la-asf"

    const-string v1, "lsf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "video/x-la-asf"

    const-string v1, "lsx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "video/x-mng"

    const-string v1, "mng"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "video/x-ms-asf"

    const-string v1, "asx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "video/x-ms-wm"

    const-string v1, "wm"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "video/x-ms-wmv"

    const-string v1, "wmv"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "video/x-ms-wmx"

    const-string v1, "wmx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "video/x-ms-wvx"

    const-string v1, "wvx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "video/x-msvideo"

    const-string v1, "avi"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "video/x-sgi-movie"

    const-string v1, "movie"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "x-conference/x-cooltalk"

    const-string v1, "ice"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "x-epoc/x-sisx-app"

    const-string v1, "sisx"

    invoke-static {v0, v1}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lmiui/net/MimeUtils;->cC()V

    .line 344
    return-void
.end method

.method protected constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Cannot instantiate utility class"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 363
    sget-object v0, Lmiui/net/MimeUtils;->Cy:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lmiui/net/MimeUtils;->Cy:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->Cz:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void
.end method

.method private static cB()Ljava/io/InputStream;
    .locals 4

    .line 371
    const-string v0, "content.types.user.table"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 383
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "content-types.properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 387
    :catch_1
    move-exception v0

    .line 391
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static cC()V
    .locals 4

    .line 401
    invoke-static {}, Lmiui/net/MimeUtils;->cB()Ljava/io/InputStream;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 403
    return-void

    .line 409
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 410
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 412
    invoke-virtual {v1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    invoke-static {v2, v3}, Lmiui/net/MimeUtils;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    goto :goto_0

    .line 418
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 419
    nop

    .line 421
    goto :goto_1

    .line 418
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    :goto_1
    return-void
.end method

.method public static guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 459
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->Cy:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 439
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lmiui/net/MimeUtils;->Cz:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static hasExtension(Ljava/lang/String;)Z
    .locals 1

    .line 448
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/net/MimeUtils;->Cz:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 430
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmiui/net/MimeUtils;->Cy:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
