.class final Lcom/google/android/gms/internal/firebase-auth-api/zzalo;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaln;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalq;->zza()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalq;->zza()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalq;->zza(I)B

    move-result v2

    .line 5
    sparse-switch v2, :sswitch_data_0

    .line 26
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_0

    .line 27
    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20
    :sswitch_0
    const-string v2, "\\\\"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    goto :goto_1

    .line 22
    :sswitch_1
    const-string v2, "\\\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    goto :goto_1

    .line 24
    :sswitch_2
    const-string v2, "\\\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    goto :goto_1

    .line 14
    :sswitch_3
    const-string v2, "\\r"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    goto :goto_1

    .line 10
    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    goto :goto_1

    .line 18
    :sswitch_5
    const-string v2, "\\v"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    goto :goto_1

    .line 12
    :sswitch_6
    const-string v2, "\\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    goto :goto_1

    .line 16
    :sswitch_7
    const-string v2, "\\t"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    goto :goto_1

    .line 8
    :sswitch_8
    const-string v2, "\\b"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    goto :goto_1

    .line 6
    :sswitch_9
    const-string v2, "\\a"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    goto :goto_1

    .line 28
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_9
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method
