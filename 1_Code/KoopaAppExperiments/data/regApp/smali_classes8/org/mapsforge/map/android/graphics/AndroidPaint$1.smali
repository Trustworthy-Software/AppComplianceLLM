.class synthetic Lorg/mapsforge/map/android/graphics/AndroidPaint$1;
.super Ljava/lang/Object;
.source "AndroidPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/graphics/AndroidPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$Align:[I

.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$Cap:[I

.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$Join:[I

.field static final synthetic $SwitchMap$org$mapsforge$core$graphics$Style:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 107
    invoke-static {}, Lorg/mapsforge/core/graphics/FontFamily;->values()[Lorg/mapsforge/core/graphics/FontFamily;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    invoke-virtual {v2}, Lorg/mapsforge/core/graphics/FontFamily;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

    sget-object v3, Lorg/mapsforge/core/graphics/FontFamily;->MONOSPACE:Lorg/mapsforge/core/graphics/FontFamily;

    invoke-virtual {v3}, Lorg/mapsforge/core/graphics/FontFamily;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

    sget-object v4, Lorg/mapsforge/core/graphics/FontFamily;->SANS_SERIF:Lorg/mapsforge/core/graphics/FontFamily;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/FontFamily;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontFamily:[I

    sget-object v5, Lorg/mapsforge/core/graphics/FontFamily;->SERIF:Lorg/mapsforge/core/graphics/FontFamily;

    invoke-virtual {v5}, Lorg/mapsforge/core/graphics/FontFamily;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    .line 92
    :goto_3
    invoke-static {}, Lorg/mapsforge/core/graphics/FontStyle;->values()[Lorg/mapsforge/core/graphics/FontStyle;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

    :try_start_4
    sget-object v5, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-virtual {v5}, Lorg/mapsforge/core/graphics/FontStyle;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    :goto_4
    :try_start_5
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

    sget-object v5, Lorg/mapsforge/core/graphics/FontStyle;->BOLD_ITALIC:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-virtual {v5}, Lorg/mapsforge/core/graphics/FontStyle;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v4

    :goto_5
    :try_start_6
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

    sget-object v5, Lorg/mapsforge/core/graphics/FontStyle;->ITALIC:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-virtual {v5}, Lorg/mapsforge/core/graphics/FontStyle;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v4

    :goto_6
    :try_start_7
    sget-object v4, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$FontStyle:[I

    sget-object v5, Lorg/mapsforge/core/graphics/FontStyle;->NORMAL:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-virtual {v5}, Lorg/mapsforge/core/graphics/FontStyle;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v3

    .line 81
    :goto_7
    invoke-static {}, Lorg/mapsforge/core/graphics/Style;->values()[Lorg/mapsforge/core/graphics/Style;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Style:[I

    :try_start_8
    sget-object v4, Lorg/mapsforge/core/graphics/Style;->FILL:Lorg/mapsforge/core/graphics/Style;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Style;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v3

    :goto_8
    :try_start_9
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Style:[I

    sget-object v4, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Style;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    .line 68
    :goto_9
    invoke-static {}, Lorg/mapsforge/core/graphics/Join;->values()[Lorg/mapsforge/core/graphics/Join;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Join:[I

    :try_start_a
    sget-object v4, Lorg/mapsforge/core/graphics/Join;->BEVEL:Lorg/mapsforge/core/graphics/Join;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Join;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    :goto_a
    :try_start_b
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Join:[I

    sget-object v4, Lorg/mapsforge/core/graphics/Join;->ROUND:Lorg/mapsforge/core/graphics/Join;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Join;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v3

    :goto_b
    :try_start_c
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Join:[I

    sget-object v4, Lorg/mapsforge/core/graphics/Join;->MITER:Lorg/mapsforge/core/graphics/Join;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Join;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v3

    .line 55
    :goto_c
    invoke-static {}, Lorg/mapsforge/core/graphics/Cap;->values()[Lorg/mapsforge/core/graphics/Cap;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Cap:[I

    :try_start_d
    sget-object v4, Lorg/mapsforge/core/graphics/Cap;->BUTT:Lorg/mapsforge/core/graphics/Cap;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Cap;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v3

    :goto_d
    :try_start_e
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Cap:[I

    sget-object v4, Lorg/mapsforge/core/graphics/Cap;->ROUND:Lorg/mapsforge/core/graphics/Cap;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Cap;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v3

    :goto_e
    :try_start_f
    sget-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Cap:[I

    sget-object v4, Lorg/mapsforge/core/graphics/Cap;->SQUARE:Lorg/mapsforge/core/graphics/Cap;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Cap;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v3

    .line 42
    :goto_f
    invoke-static {}, Lorg/mapsforge/core/graphics/Align;->values()[Lorg/mapsforge/core/graphics/Align;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Align:[I

    :try_start_10
    sget-object v4, Lorg/mapsforge/core/graphics/Align;->CENTER:Lorg/mapsforge/core/graphics/Align;

    invoke-virtual {v4}, Lorg/mapsforge/core/graphics/Align;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    :goto_10
    :try_start_11
    sget-object v1, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Align:[I

    sget-object v3, Lorg/mapsforge/core/graphics/Align;->LEFT:Lorg/mapsforge/core/graphics/Align;

    invoke-virtual {v3}, Lorg/mapsforge/core/graphics/Align;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lorg/mapsforge/map/android/graphics/AndroidPaint$1;->$SwitchMap$org$mapsforge$core$graphics$Align:[I

    sget-object v1, Lorg/mapsforge/core/graphics/Align;->RIGHT:Lorg/mapsforge/core/graphics/Align;

    invoke-virtual {v1}, Lorg/mapsforge/core/graphics/Align;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    return-void
.end method
