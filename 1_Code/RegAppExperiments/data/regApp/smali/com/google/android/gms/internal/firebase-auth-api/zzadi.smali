.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzadi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaco;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaco;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacs;",
            ")V"
        }
    .end annotation

    .line 48
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 52
    nop

    .line 53
    invoke-interface {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaco;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 54
    nop

    .line 55
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 56
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const v0, 0xea60

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 58
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza(Ljava/net/URLConnection;)V

    .line 59
    new-instance p4, Ljava/io/BufferedOutputStream;

    .line 60
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    array-length v1, p1

    invoke-direct {p4, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p4, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    .line 64
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 72
    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 73
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 74
    return-void

    .line 69
    :catch_3
    move-exception p0

    .line 70
    const-string p0, "<<Network Error>>"

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 71
    return-void

    .line 66
    :catch_4
    move-exception p0

    .line 67
    const-string p0, "TIMEOUT"

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/zzacs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacs;",
            ")V"
        }
    .end annotation

    .line 33
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 35
    const v0, 0xea60

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 36
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza(Ljava/net/URLConnection;)V

    .line 37
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 45
    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 47
    return-void

    .line 42
    :catch_1
    move-exception p0

    .line 43
    const-string p0, "<<Network Error>>"

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 44
    return-void

    .line 39
    :catch_2
    move-exception p0

    .line 40
    const-string p0, "TIMEOUT"

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaad; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadi;->zza(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    const-class p2, Ljava/lang/String;

    .line 14
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacl;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 15
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    nop

    .line 18
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacl;->zza(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;

    .line 19
    nop

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaad; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :goto_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 22
    return-void

    .line 10
    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadl;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaad; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 31
    :catchall_2
    move-exception p1

    goto :goto_5

    .line 27
    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    .line 28
    :goto_4
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 29
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 30
    return-void

    .line 23
    :catch_2
    move-exception p2

    .line 24
    :try_start_6
    const-string p2, "TIMEOUT"

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 25
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    return-void

    .line 31
    :goto_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 32
    throw p1
.end method

.method private static final zza(I)Z
    .locals 1

    .line 75
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
