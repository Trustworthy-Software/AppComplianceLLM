.class final Lcom/google/android/gms/internal/firebase-auth-api/zzadt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "SmsRetrieverHelper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/common/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-object v0
.end method

.method static zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "(?<!\\d)\\d{6}(?!\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzq;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 27
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 28
    const/16 v1, 0x9

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 29
    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 30
    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " -- Hash: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/logging/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoSuchAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V
    .locals 3

    .line 36
    nop

    .line 37
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 38
    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    .line 45
    invoke-static {v1, v2}, Lcom/google/firebase/auth/PhoneAuthCredential;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzh:Z

    .line 49
    return-void

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zze(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method private final zze(Ljava/lang/String;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 59
    if-nez p1, :cond_0

    .line 60
    return-void

    .line 61
    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzh:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Timed out waiting for SMS."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 65
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Ljava/lang/String;)V

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzi:Z

    .line 68
    :cond_2
    return-void
.end method

.method private final zzf(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 70
    if-nez v0, :cond_0

    .line 71
    return-void

    .line 72
    :cond_0
    iget-boolean v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzi:Z

    if-nez v0, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zze(Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacc;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V

    return-object v0
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;JZ)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    invoke-direct {v1, p3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;-><init>(JZ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V

    .line 99
    nop

    .line 100
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 101
    iget-wide p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zza:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    const/4 p4, 0x0

    if-gtz p3, :cond_0

    .line 102
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string p2, "Timeout of 0 specified; SmsRetriever will not start."

    new-array p3, p4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 104
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p5, Lcom/google/android/gms/internal/firebase-auth-api/zzads;

    invoke-direct {p5, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzads;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zza:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 105
    invoke-interface {p3, p5, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzf:Ljava/util/concurrent/ScheduledFuture;

    .line 106
    iget-boolean p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzc:Z

    if-nez p2, :cond_1

    .line 107
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string p2, "SMS auto-retrieval unavailable; SmsRetriever will not start."

    new-array p3, p4, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void

    .line 109
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    .line 110
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    const-string p3, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    .line 113
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 114
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzc;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 117
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 118
    return-void
.end method

.method final zzb()Ljava/lang/String;
    .locals 4

    .line 7
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    .line 11
    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzb:Landroid/content/Context;

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    .line 14
    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 15
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v2

    .line 16
    :goto_0
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    return-object v1

    .line 19
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string v2, "Hash generation failed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception v1

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string v2, "Unable to find package to obtain hash."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 77
    if-nez p2, :cond_0

    .line 78
    return-void

    .line 79
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-boolean v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzg:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zzb(Ljava/lang/String;)V

    .line 82
    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzh:Z

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    .line 84
    invoke-static {v0, v1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 86
    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzi:Z

    if-eqz v0, :cond_3

    .line 87
    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Ljava/lang/String;)V

    .line 88
    :cond_3
    return-void
.end method

.method final synthetic zzb(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzf(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 90
    if-nez v0, :cond_0

    .line 91
    return-void

    .line 92
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzf:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzf:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzf:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 94
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method final zzd(Ljava/lang/String;)Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
