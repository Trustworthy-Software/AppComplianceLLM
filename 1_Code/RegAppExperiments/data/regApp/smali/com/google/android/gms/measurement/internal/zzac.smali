.class abstract Lcom/google/android/gms/measurement/internal/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# instance fields
.field zza:Ljava/lang/String;

.field zzb:I

.field zzc:Ljava/lang/Boolean;

.field zzd:Ljava/lang/Boolean;

.field zze:Ljava/lang/Long;

.field zzf:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzac;->zza:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzac;->zzb:I

    .line 129
    return-void
.end method

.method static zza(DLcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;
    .locals 1

    .line 112
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzew$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(JLcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;
    .locals 1

    .line 115
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p0, 0x0

    invoke-static {v0, p2, p0, p1}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzew$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 116
    :catch_0
    move-exception p0

    .line 117
    const/4 p0, 0x0

    return-object p0
.end method

.method static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzd;)Ljava/lang/Boolean;
    .locals 4

    .line 118
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return-object v1

    .line 120
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzew$zzd;D)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 121
    :catch_0
    move-exception p0

    .line 122
    return-object v1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfr;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzfr;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 85
    return-object v0

    .line 86
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne p1, v1, :cond_2

    .line 87
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    :cond_1
    return-object v0

    .line 89
    :cond_2
    if-nez p3, :cond_3

    .line 90
    return-object v0

    .line 91
    :cond_3
    if-nez p2, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 93
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 92
    :cond_5
    :goto_0
    nop

    .line 94
    :goto_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzw;->zza:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 111
    return-object v0

    .line 110
    :pswitch_0
    if-nez p4, :cond_6

    return-object v0

    :cond_6
    invoke-interface {p4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 109
    :pswitch_1
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_2
    invoke-virtual {p0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 107
    :pswitch_3
    invoke-virtual {p0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_4
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 95
    :pswitch_5
    if-nez p5, :cond_7

    .line 96
    return-object v0

    .line 97
    :cond_7
    if-eqz p2, :cond_8

    const/4 p1, 0x0

    goto :goto_2

    :cond_8
    const/16 p1, 0x42

    .line 98
    :goto_2
    :try_start_0
    invoke-static {p5, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 100
    :catch_0
    move-exception p0

    .line 101
    if-eqz p6, :cond_9

    .line 102
    nop

    .line 103
    invoke-virtual {p6}, Lcom/google/android/gms/measurement/internal/zzfr;->zzu()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object p0

    .line 104
    const-string p1, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p0, p1, p5}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :cond_9
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzf;Lcom/google/android/gms/measurement/internal/zzfr;)Ljava/lang/Boolean;
    .locals 9

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 56
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzj()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zza:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne v1, v2, :cond_1

    goto/16 :goto_5

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne v1, v2, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zza()I

    move-result v1

    if-nez v1, :cond_3

    .line 61
    return-object v0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzi()Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    return-object v0

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzg()Z

    move-result v4

    .line 66
    if-nez v4, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-eq v3, v1, :cond_5

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzg:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne v3, v1, :cond_4

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zze()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    .line 67
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zze()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 69
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zza()I

    move-result v1

    if-nez v1, :cond_6

    .line 70
    move-object v6, v0

    goto :goto_3

    .line 71
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzf;->zzf()Ljava/util/List;

    move-result-object p1

    .line 72
    if-eqz v4, :cond_7

    .line 73
    move-object v6, p1

    goto :goto_3

    .line 74
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_2

    .line 78
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v6, p1

    .line 79
    :goto_3
    nop

    .line 80
    nop

    .line 81
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;

    if-ne v3, p1, :cond_9

    .line 82
    move-object v7, v5

    goto :goto_4

    .line 81
    :cond_9
    move-object v7, v0

    .line 83
    :goto_4
    move-object v2, p0

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzew$zzf$zza;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfr;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 58
    :cond_a
    :goto_5
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzew$zzd;D)Ljava/lang/Boolean;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    if-ne v0, v2, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    if-ne v0, v2, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzk()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_1
    return-object v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzi()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    return-object v1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object v0

    .line 11
    nop

    .line 12
    nop

    .line 13
    nop

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zza()Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    if-ne v2, v3, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzf()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zze()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    move-object p1, v2

    move-object v2, v1

    goto :goto_1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    return-object v1

    .line 17
    :cond_5
    :goto_0
    return-object v1

    .line 23
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzmz;->zzb(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    return-object v1

    .line 25
    :cond_7
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzew$zzd;->zzd()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    move-object p1, v1

    move-object v3, p1

    .line 29
    :goto_1
    nop

    .line 30
    nop

    .line 31
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    if-ne v0, v4, :cond_8

    .line 32
    if-nez p1, :cond_9

    .line 33
    return-object v1

    .line 34
    :cond_8
    if-eqz v2, :cond_11

    .line 35
    :cond_9
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzw;->zzb:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 49
    :pswitch_0
    if-nez p1, :cond_a

    .line 50
    return-object v1

    .line 51
    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_1
    if-eqz v2, :cond_11

    .line 41
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_d

    .line 42
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 43
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-lez p1, :cond_c

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 45
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_c

    goto :goto_3

    :cond_c
    move v4, v5

    .line 47
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 48
    :cond_d
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_e

    goto :goto_4

    :cond_e
    move v4, v5

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_2
    if-eqz v2, :cond_11

    .line 39
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_f

    goto :goto_5

    :cond_f
    move v4, v5

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_3
    if-eqz v2, :cond_11

    .line 37
    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gez p0, :cond_10

    goto :goto_6

    :cond_10
    move v4, v5

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 52
    :cond_11
    :goto_7
    nop

    .line 53
    return-object v1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    return-object v1

    .line 4
    :cond_12
    :goto_8
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method abstract zza()I
.end method

.method abstract zzb()Z
.end method

.method abstract zzc()Z
.end method
