.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzamu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

.field private static final zzd:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final zzf:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static final zzg:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    const-wide v1, -0xe7791f700L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    const-wide v2, 0x3afff4417fL

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    const v2, 0x3b9ac9ff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 89
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 90
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzd:Ljava/lang/ThreadLocal;

    .line 91
    const-string v0, "now"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzc(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zze:Ljava/lang/reflect/Method;

    .line 92
    const-string v0, "getEpochSecond"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzc(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzf:Ljava/lang/reflect/Method;

    .line 93
    const-string v0, "getNano"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzc(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzg:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;)J
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;)Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzalp;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 25
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 26
    const-string v1, "\""

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    .line 28
    const/16 v4, 0x5a

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 29
    const/16 v6, 0x2b

    if-ne v5, v3, :cond_0

    .line 30
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 31
    :cond_0
    if-ne v5, v3, :cond_1

    .line 32
    const/16 v5, 0x2d

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 33
    :cond_1
    if-eq v5, v3, :cond_d

    .line 35
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 36
    nop

    .line 37
    nop

    .line 38
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 39
    if-eq v7, v3, :cond_2

    .line 40
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 41
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_0

    .line 39
    :cond_2
    const-string v3, ""

    .line 42
    :goto_0
    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzd:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v9, v2

    goto :goto_3

    .line 45
    :cond_3
    nop

    .line 46
    move v0, v2

    move v9, v0

    :goto_1
    const/16 v10, 0x9

    if-ge v0, v10, :cond_6

    .line 47
    mul-int/lit8 v9, v9, 0xa

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_5

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v10, v11, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x39

    if-gt v10, v12, :cond_4

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    goto :goto_2

    .line 50
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Invalid nanoseconds."

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 52
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_6
    nop

    .line 54
    :goto_3
    nop

    .line 55
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_8

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v5, 0x1

    if-ne v0, v3, :cond_7

    goto :goto_4

    .line 57
    :cond_7
    new-instance v0, Ljava/text/ParseException;

    .line 58
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse timestamp: invalid trailing data \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 59
    :cond_8
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzb(Ljava/lang/String;)J

    move-result-wide v0

    .line 61
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_9

    .line 62
    sub-long/2addr v7, v0

    goto :goto_4

    .line 63
    :cond_9
    add-long/2addr v7, v0

    .line 64
    :goto_4
    nop

    .line 65
    const v0, -0x3b9aca00

    const v1, 0x3b9aca00

    if-le v9, v0, :cond_a

    if-lt v9, v1, :cond_b

    .line 66
    :cond_a
    :try_start_0
    div-int v0, v9, v1

    int-to-long v3, v0

    invoke-static {v7, v8, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zza(JJ)J

    move-result-wide v7

    .line 67
    rem-int/2addr v9, v1

    .line 68
    :cond_b
    if-gez v9, :cond_c

    .line 69
    add-int/2addr v9, v1

    .line 70
    const-wide/16 v0, 0x1

    invoke-static {v7, v8, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbe;->zzb(JJ)J

    move-result-wide v7

    .line 71
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(J)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzalp$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    .line 72
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamu;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;)Lcom/google/android/gms/internal/firebase-auth-api/zzalp;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object p0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse timestamp "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " Timestamp is out of range."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 77
    throw v1

    .line 34
    :cond_d
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Failed to parse timestamp: missing valid timezone offset."

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 27
    :cond_e
    new-instance v0, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse timestamp: invalid timestamp \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic zza()Ljava/text/SimpleDateFormat;
    .locals 5

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 83
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 84
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 85
    nop

    .line 86
    return-object v0
.end method

.method private static zzb(Ljava/lang/String;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2
    const/4 v1, -0x1

    const-string v2, "Invalid offset value: "

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v0

    mul-long/2addr v4, v6

    return-wide v4

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    .line 3
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzalp;)Lcom/google/android/gms/internal/firebase-auth-api/zzalp;
    .locals 7

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zzb()J

    move-result-wide v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalp;->zza()I

    move-result v2

    .line 14
    nop

    .line 15
    const-wide v3, -0xe7791f700L

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    const-wide v5, 0x3afff4417fL

    cmp-long v3, v0, v5

    if-lez v3, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    if-ltz v2, :cond_2

    const v3, 0x3b9aca00

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 18
    :cond_2
    :goto_0
    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    nop

    .line 20
    :goto_2
    if-eqz v4, :cond_4

    .line 24
    return-object p0

    .line 21
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 23
    const-string v1, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 78
    :try_start_0
    const-string v0, "java.time.Instant"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    const/4 p0, 0x0

    return-object p0
.end method
