.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "**>;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzd()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza:Ljava/lang/Class;

    .line 246
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    .line 247
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    return-void
.end method

.method static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I
    .locals 1

    .line 92
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzajf;)I

    move-result p0

    return p0

    .line 94
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result p0

    return p0
.end method

.method static zza(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            ">;)I"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 11
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)I

    move-result p0

    add-int/2addr v0, p0

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    return v0
.end method

.method static zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")I"
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 49
    :cond_0
    nop

    .line 50
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {p0, v3, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result v3

    add-int/2addr v2, v3

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return v2
.end method

.method static zza(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    nop

    .line 5
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zza(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "**>;"
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    return-object v0
.end method

.method static zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzals;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 241
    if-nez p3, :cond_0

    .line 242
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 243
    :cond_0
    int-to-long v0, p2

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzb(Ljava/lang/Object;IJ)V

    .line 244
    return-object p3
.end method

.method static zza(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzals;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;",
            "TUB;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 216
    if-nez p3, :cond_0

    .line 217
    return-object p4

    .line 218
    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 219
    nop

    .line 220
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 222
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 223
    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    if-eq v1, v2, :cond_1

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    :cond_2
    nop

    .line 228
    invoke-static {p0, p1, v3, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzals;)Ljava/lang/Object;

    move-result-object p4

    .line 229
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_3
    if-eq v2, v0, :cond_4

    .line 231
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 232
    :cond_4
    goto :goto_3

    .line 233
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiy;->zza(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 236
    nop

    .line 237
    invoke-static {p0, p1, v0, p4, p5}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzals;)Ljava/lang/Object;

    move-result-object p4

    .line 238
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 239
    :cond_6
    goto :goto_2

    .line 240
    :cond_7
    :goto_3
    return-object p4
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(ILjava/util/List;)V

    .line 274
    :cond_0
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 292
    :cond_0
    return-void
.end method

.method public static zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zza(ILjava/util/List;Z)V

    .line 271
    :cond_0
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaii;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzail<",
            "TFT;>;>(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaii<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 248
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaii;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    move-result-object p2

    .line 249
    nop

    .line 250
    iget-object v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaky;->isEmpty()Z

    move-result v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaii;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    move-result-object p0

    .line 253
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaij;)V

    .line 254
    :cond_0
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajy;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajy;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 255
    nop

    .line 256
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zze(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 257
    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzajy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 258
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaly;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 259
    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzals;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 262
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzals;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public static zza(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 265
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_1
    :goto_0
    return-void
.end method

.method static zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 323
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static zzb(ILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 145
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 146
    return v1

    .line 147
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 148
    instance-of v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    if-eqz v2, :cond_3

    .line 149
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    .line 150
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 151
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->zzb(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v3, :cond_1

    .line 153
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 154
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 155
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_2
    goto :goto_4

    .line 157
    :cond_3
    nop

    :goto_2
    if-ge v1, v0, :cond_5

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 159
    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v3, :cond_4

    .line 160
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_3

    .line 161
    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 162
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_5
    :goto_4
    return p0
.end method

.method static zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")I"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    return v1

    .line 98
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 99
    nop

    :goto_0
    if-ge v1, v0, :cond_2

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 101
    instance-of v3, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    if-eqz v3, :cond_1

    .line 102
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzajf;

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajf;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_1

    .line 103
    :cond_1
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)I

    move-result v2

    add-int/2addr p0, v2

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_2
    return p0
.end method

.method static zzb(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    const/4 p0, 0x0

    return p0

    .line 18
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzb(Ljava/util/List;)I

    move-result p1

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzb(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 21
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22
    return v1

    .line 23
    :cond_0
    nop

    .line 24
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    if-eqz v2, :cond_2

    .line 25
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    .line 26
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    goto :goto_2

    .line 30
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 33
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "**>;"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzals;

    return-object v0
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(ILjava/util/List;)V

    .line 316
    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 301
    :cond_0
    return-void
.end method

.method public static zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzb(ILjava/util/List;Z)V

    .line 277
    :cond_0
    return-void
.end method

.method static zzc(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 35
    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 36
    return p2

    .line 37
    :cond_0
    nop

    .line 38
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzc(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzals<",
            "**>;"
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zze()Ljava/lang/Class;

    move-result-object v1

    .line 203
    if-nez v1, :cond_0

    .line 204
    return-object v0

    .line 205
    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 206
    :catchall_0
    move-exception v1

    .line 207
    return-object v0
.end method

.method public static zzc(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzc(ILjava/util/List;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method static zzd(ILjava/util/List;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    nop

    .line 44
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static zzd(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static zzd()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 210
    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zzd(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzd(ILjava/util/List;Z)V

    .line 283
    :cond_0
    return-void
.end method

.method static zze(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 55
    if-nez p2, :cond_0

    .line 56
    const/4 p0, 0x0

    return p0

    .line 57
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zze(Ljava/util/List;)I

    move-result p1

    .line 58
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zze(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 62
    :cond_0
    nop

    .line 63
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    if-eqz v2, :cond_2

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    .line 65
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    goto :goto_2

    .line 69
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_3
    :goto_2
    return v2
.end method

.method private static zze()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 213
    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zze(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zze(ILjava/util/List;Z)V

    .line 286
    :cond_0
    return-void
.end method

.method static zzf(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 74
    if-nez p2, :cond_0

    .line 75
    const/4 p0, 0x0

    return p0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzf(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static zzf(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return v1

    .line 81
    :cond_0
    nop

    .line 82
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    if-eqz v2, :cond_2

    .line 83
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    .line 84
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    goto :goto_2

    .line 88
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzf(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzf(ILjava/util/List;Z)V

    .line 289
    :cond_0
    return-void
.end method

.method static zzg(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 107
    if-nez p2, :cond_0

    .line 108
    const/4 p0, 0x0

    return p0

    .line 109
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzg(Ljava/util/List;)I

    move-result p1

    .line 110
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzg(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 112
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    return v1

    .line 114
    :cond_0
    nop

    .line 115
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    if-eqz v2, :cond_2

    .line 116
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    .line 117
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    goto :goto_2

    .line 121
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 122
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzg(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzg(ILjava/util/List;Z)V

    .line 295
    :cond_0
    return-void
.end method

.method static zzh(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 126
    if-nez p2, :cond_0

    .line 127
    const/4 p0, 0x0

    return p0

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzh(Ljava/util/List;)I

    move-result p1

    .line 129
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzh(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 131
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 133
    :cond_0
    nop

    .line 134
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    if-eqz v2, :cond_2

    .line 135
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    .line 136
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_1
    goto :goto_2

    .line 140
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 141
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzh(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzh(ILjava/util/List;Z)V

    .line 298
    :cond_0
    return-void
.end method

.method static zzi(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 165
    if-nez p2, :cond_0

    .line 166
    const/4 p0, 0x0

    return p0

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzi(Ljava/util/List;)I

    move-result p1

    .line 168
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzi(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 169
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 170
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 172
    :cond_0
    nop

    .line 173
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    if-eqz v2, :cond_2

    .line 174
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;

    .line 175
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 176
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    goto :goto_2

    .line 179
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 180
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzi(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzi(ILjava/util/List;Z)V

    .line 304
    :cond_0
    return-void
.end method

.method static zzj(ILjava/util/List;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 184
    if-nez p2, :cond_0

    .line 185
    const/4 p0, 0x0

    return p0

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zzj(Ljava/util/List;)I

    move-result p1

    .line 187
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(I)I

    move-result p0

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static zzj(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 189
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    return v1

    .line 191
    :cond_0
    nop

    .line 192
    instance-of v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    if-eqz v2, :cond_2

    .line 193
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;

    .line 194
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 195
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajq;->zzb(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zze(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    goto :goto_2

    .line 198
    :cond_2
    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_3

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zze(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    :cond_3
    :goto_2
    return v2
.end method

.method public static zzj(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzj(ILjava/util/List;Z)V

    .line 307
    :cond_0
    return-void
.end method

.method public static zzk(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzk(ILjava/util/List;Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public static zzl(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzl(ILjava/util/List;Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public static zzm(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzm(ILjava/util/List;Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public static zzn(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzams;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzams;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-interface {p2, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzams;->zzn(ILjava/util/List;Z)V

    .line 322
    :cond_0
    return-void
.end method
