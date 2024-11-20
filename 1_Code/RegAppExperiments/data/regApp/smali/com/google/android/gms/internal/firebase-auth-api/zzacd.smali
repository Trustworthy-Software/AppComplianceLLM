.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzacd;
.super Landroid/os/AsyncTask;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzacg;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/logging/Logger;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacf;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Landroid/net/Uri$Builder;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/firebase/FirebaseApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/google/android/gms/common/logging/Logger;

    const-string v1, "GetAuthDomainTask"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/logging/Logger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzacf;)V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Ljava/lang/String;

    .line 57
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/firebase/FirebaseApp;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzg:Lcom/google/firebase/FirebaseApp;

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string p4, "com.google.firebase.auth.KEY_API_KEY"

    invoke-virtual {p3, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 61
    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 62
    nop

    .line 63
    const-string v1, "getProjectConfig"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 64
    const-string v2, "key"

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 65
    const-string v1, "androidPackageName"

    invoke-virtual {p4, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    .line 66
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "sha1Cert"

    invoke-virtual {p4, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzc:Ljava/lang/String;

    .line 68
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzd:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-interface {p5, p3, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zze:Landroid/net/Uri$Builder;

    .line 70
    const-string p1, "com.google.firebase.auth.KEY_CUSTOM_AUTH_DOMAIN"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzf:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private final varargs zza([Ljava/lang/Void;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;
    .locals 6

    .line 1
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 4
    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=UTF-8"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const v2, 0xea60

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzg:Lcom/google/firebase/FirebaseApp;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza(Ljava/net/URLConnection;)V

    .line 10
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 11
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    const-string v3, "Error getting project config. Failed with %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, p1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, p1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;-><init>()V

    .line 19
    new-instance v2, Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzf:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    const-string v0, "UNAUTHORIZED_DOMAIN"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaad; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 29
    :cond_3
    goto :goto_0

    .line 30
    :cond_4
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaad;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConversionException encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    :catch_1
    move-exception v0

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null pointer encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    goto :goto_1

    .line 31
    :catch_2
    move-exception v0

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException occurred: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    nop

    .line 39
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    .line 43
    if-nez p0, :cond_0

    .line 44
    const-string p0, "Could not retrieve the authDomain for this project but did not receive an error response from the network request. Please try again."

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WEB_INTERNAL_ERROR:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 47
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Ljava/io/InputStream;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    const-class p0, Ljava/lang/String;

    .line 48
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacl;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object p0

    .line 50
    :cond_1
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing error message from response body in getErrorMessageFromBody. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/logging/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacg;)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;

    .line 79
    nop

    .line 80
    nop

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zza()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;->zzb()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v1, 0x0

    move-object p1, v1

    .line 84
    :goto_0
    if-nez v0, :cond_1

    .line 85
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "An error has occurred: the handler reference has returned null."

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zze:Landroid/net/Uri$Builder;

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zze:Landroid/net/Uri$Builder;

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzg:Lcom/google/firebase/FirebaseApp;

    .line 90
    invoke-static {v2}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lcom/google/firebase/inject/Provider;

    move-result-object v2

    .line 91
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Landroid/net/Uri;Ljava/lang/String;Lcom/google/firebase/inject/Provider;)V

    return-void

    .line 92
    :cond_2
    nop

    .line 93
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacf;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V

    .line 95
    return-void
.end method

.method private static zza(Ljava/lang/String;)Z
    .locals 5

    .line 96
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_1

    const-string v2, "firebaseapp.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "web.app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 99
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 100
    :cond_1
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza:Lcom/google/android/gms/common/logging/Logger;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing URL for auth domain check: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ". "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :goto_0
    return v0
.end method

.method private static zza(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    const/16 v0, 0x80

    :try_start_0
    new-array v0, v0, [B

    .line 106
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 107
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 108
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 111
    return-object p0

    .line 112
    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 113
    throw p0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza([Ljava/lang/Void;)Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    .line 73
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacg;)V

    .line 74
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacg;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzacg;)V

    .line 77
    return-void
.end method
