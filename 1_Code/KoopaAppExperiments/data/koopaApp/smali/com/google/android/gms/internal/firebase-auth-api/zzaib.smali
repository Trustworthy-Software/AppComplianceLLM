.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaib;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzams;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 7
    iput-object p0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    .line 8
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)Lcom/google/android/gms/internal/firebase-auth-api/zzaib;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 4
    sget v0, Lcom/google/android/gms/internal/firebase-auth-api/zzamr;->zza:I

    return v0
.end method

.method public final zza(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 50
    return-void
.end method

.method public final zza(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ID)V

    .line 33
    return-void
.end method

.method public final zza(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(IF)V

    .line 106
    return-void
.end method

.method public final zza(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 52
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(II)V

    .line 53
    return-void
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(IJ)V

    .line 89
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 27
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/firebase-auth-api/zzajw;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzajw<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzajw;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahz;Lcom/google/android/gms/internal/firebase-auth-api/zzajw;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public final zza(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 186
    return-void
.end method

.method public final zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    .line 123
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 124
    nop

    .line 125
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaib;

    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzams;)V

    .line 126
    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 127
    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILjava/lang/String;)V

    .line 264
    return-void
.end method

.method public final zza(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final zza(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 129
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public final zza(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 12
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 13
    nop

    .line 14
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(Z)I

    move-result v1

    add-int/2addr p3, v1

    .line 16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 18
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(Z)V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21
    :cond_1
    return-void

    .line 22
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 23
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(IZ)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 25
    :cond_3
    return-void
.end method

.method public final zza(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(IZ)V

    .line 10
    return-void
.end method

.method public final zzb(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 262
    return-void
.end method

.method public final zzb(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(II)V

    .line 72
    return-void
.end method

.method public final zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 150
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(IJ)V

    .line 151
    return-void
.end method

.method public final zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzakb;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 178
    return-void
.end method

.method public final zzb(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    instance-of v0, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 266
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;

    .line 267
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 268
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->zzb(I)Ljava/lang/Object;

    move-result-object v2

    .line 269
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILjava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    invoke-virtual {v3, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(ILcom/google/android/gms/internal/firebase-auth-api/zzahd;)V

    .line 272
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return-void

    .line 274
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ILjava/lang/String;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    :cond_3
    return-void
.end method

.method public final zzb(ILjava/util/List;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzakt;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 180
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzakt;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method public final zzb(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 35
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 36
    nop

    .line 37
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 38
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(D)I

    move-result v1

    add-int/2addr p3, v1

    .line 39
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 41
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(D)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 46
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(ID)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 48
    :cond_3
    return-void
.end method

.method public final zzc(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(II)V

    .line 133
    return-void
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 208
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(IJ)V

    .line 209
    return-void
.end method

.method public final zzc(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 55
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 56
    nop

    .line 57
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 58
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 59
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 61
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 63
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    return-void

    .line 66
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 67
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(II)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_3
    return-void
.end method

.method public final zzd(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(II)V

    .line 189
    return-void
.end method

.method public final zzd(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(IJ)V

    .line 245
    return-void
.end method

.method public final zzd(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 74
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 75
    nop

    .line 76
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 77
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 78
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 80
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzi(I)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    return-void

    .line 84
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 85
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(II)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_3
    return-void
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzi(II)V

    .line 228
    return-void
.end method

.method public final zze(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(IJ)V

    .line 296
    return-void
.end method

.method public final zze(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 91
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 92
    nop

    .line 93
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 95
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 97
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(J)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :cond_1
    return-void

    .line 101
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 102
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(IJ)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_3
    return-void
.end method

.method public final zzf(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 279
    return-void
.end method

.method public final zzf(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 108
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 109
    nop

    .line 110
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 111
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza(F)I

    move-result v1

    add-int/2addr p3, v1

    .line 112
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 114
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 115
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(F)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    return-void

    .line 118
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 119
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(IF)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 121
    :cond_3
    return-void
.end method

.method public final zzg(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 135
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 136
    nop

    .line 137
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 138
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 139
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 141
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(I)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    :cond_1
    return-void

    .line 145
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 146
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(II)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    :cond_3
    return-void
.end method

.method public final zzh(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 153
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 154
    nop

    .line 155
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 156
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 157
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 159
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 161
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(J)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    return-void

    .line 164
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 165
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 166
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(IJ)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    :cond_3
    return-void
.end method

.method public final zzi(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 191
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 192
    nop

    .line 193
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 194
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zze(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 195
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 197
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 199
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzi(I)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_1
    return-void

    .line 202
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 203
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(II)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_3
    return-void
.end method

.method public final zzj(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 211
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 212
    nop

    .line 213
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 214
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzc(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 215
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 217
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 219
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(J)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_1
    return-void

    .line 222
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 223
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 224
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(IJ)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 226
    :cond_3
    return-void
.end method

.method public final zzk(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 230
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 231
    nop

    .line 232
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 233
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzf(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 234
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 236
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(I)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_1
    return-void

    .line 240
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 241
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzi(II)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    :cond_3
    return-void
.end method

.method public final zzl(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 247
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 248
    nop

    .line 249
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 250
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzd(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 251
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 253
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(J)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_1
    return-void

    .line 257
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 258
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzg(IJ)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 260
    :cond_3
    return-void
.end method

.method public final zzm(ILjava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 281
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 282
    nop

    .line 283
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 284
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 285
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 287
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_1
    return-void

    .line 291
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 292
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzk(II)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 294
    :cond_3
    return-void
.end method

.method public final zzn(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 298
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzj(II)V

    .line 299
    nop

    .line 300
    move p1, v0

    move p3, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 301
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zze(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 302
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzl(I)V

    .line 304
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 305
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(J)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 307
    :cond_1
    return-void

    .line 308
    :cond_2
    nop

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_3

    .line 309
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaib;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzh(IJ)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 311
    :cond_3
    return-void
.end method
