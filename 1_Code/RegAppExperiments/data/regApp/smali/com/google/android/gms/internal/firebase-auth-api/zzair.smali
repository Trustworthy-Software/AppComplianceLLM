.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzair;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzagu;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzf;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zza;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzagu<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzc:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    .line 154
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalv;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalv;

    return-void
.end method

.method private final zza()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzb(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 36
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzu()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    nop

    .line 38
    nop

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 42
    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 63
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahs;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahs;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahs;)Lcom/google/android/gms/internal/firebase-auth-api/zzahx;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzaku;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)V

    .line 86
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzc(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzalt; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 101
    return-object p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    throw p0

    .line 100
    :cond_0
    throw p0

    .line 93
    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    throw p0

    .line 96
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 92
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 88
    :catch_3
    move-exception p1

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzk()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 90
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 91
    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 64
    nop

    .line 65
    nop

    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zzb:[B

    .line 68
    array-length v0, p1

    .line 69
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zza([BIIZ)Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaht;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    move-object p1, v0

    .line 72
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahs;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    .line 73
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    .line 103
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p2

    .line 104
    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzahc;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/firebase-auth-api/zzahc;)V

    .line 105
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzc(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzalt; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 118
    return-object p0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 112
    :catch_1
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    throw p0

    .line 115
    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 111
    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalt;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0

    .line 107
    :catch_3
    move-exception p1

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzk()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 109
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 110
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;[BLcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 74
    array-length v0, p1

    .line 75
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;[BIILcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 44
    if-nez v0, :cond_0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    nop

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 50
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 51
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 52
    sget v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zzf:I

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 55
    nop

    .line 56
    if-eqz v0, :cond_1

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzc:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 59
    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaix;)Lcom/google/android/gms/internal/firebase-auth-api/zzaix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaix<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaix<",
            "TE;>;"
        }
    .end annotation

    .line 120
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->size()I

    move-result v0

    .line 121
    nop

    .line 122
    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 123
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaix;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzaix;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 149
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzakr;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 143
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 144
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 146
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 147
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 145
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 141
    :catch_1
    move-exception p0

    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzt()V

    .line 161
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 179
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zza:I

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 182
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 183
    return v2

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    const/4 p0, 0x0

    return p0

    .line 186
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzd(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    if-eqz p1, :cond_3

    .line 188
    sget p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zzb:I

    .line 189
    if-eqz v0, :cond_2

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 190
    :goto_0
    nop

    .line 191
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_3
    return v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt<",
            "*>;)I"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    nop

    .line 5
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;)I

    move-result p1

    .line 6
    return p1
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    move-result-object p1

    .line 78
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Lcom/google/android/gms/internal/firebase-auth-api/zzahs;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    move-result-object p0

    .line 79
    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzb(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaja; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    nop

    .line 82
    return-object p0

    .line 81
    :catch_0
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method protected static zzo()Lcom/google/android/gms/internal/firebase-auth-api/zzaix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaix<",
            "TE;>;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaks;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaks;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 171
    if-ne p0, p1, :cond_0

    .line 172
    const/4 p1, 0x1

    return p1

    .line 173
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 174
    return v0

    .line 175
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 176
    return v0

    .line 177
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza()I

    move-result v0

    return v0

    .line 21
    :cond_0
    nop

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza:I

    .line 23
    if-nez v0, :cond_1

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza()I

    move-result v0

    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza:I

    .line 26
    :cond_1
    nop

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza:I

    .line 28
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 13
    return p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzh()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzh()I

    move-result p1

    return p1

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zzb(I)V

    .line 18
    return p1
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    .line 169
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    .line 170
    return-void
.end method

.method final zzb(I)V
    .locals 3

    .line 163
    if-ltz p1, :cond_0

    .line 165
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    .line 166
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serialized size must be non-negative, was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzh()I
    .locals 2

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final zzk()I
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result v0

    return v0
.end method

.method protected final zzl()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 29
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zze:I

    .line 30
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 32
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zze:I

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    .line 35
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    return-object v0
.end method

.method final zzn()Lcom/google/android/gms/internal/firebase-auth-api/zzair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 60
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zzd:I

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    return-object v0
.end method

.method public final synthetic zzp()Lcom/google/android/gms/internal/firebase-auth-api/zzake;
    .locals 2

    .line 124
    nop

    .line 125
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zze:I

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    .line 128
    return-object v0
.end method

.method public final synthetic zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzake;
    .locals 2

    .line 129
    nop

    .line 130
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zze:I

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    .line 133
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;)Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public final synthetic zzr()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 2

    .line 135
    nop

    .line 136
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zze;->zzf:I

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    .line 139
    return-object v0
.end method

.method protected final zzs()V
    .locals 1

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zzc(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzt()V

    .line 157
    return-void
.end method

.method final zzt()V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    .line 159
    return-void
.end method

.method public final zzu()Z
    .locals 1

    .line 178
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzair;Z)Z

    move-result v0

    return v0
.end method

.method final zzv()Z
    .locals 2

    .line 193
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
