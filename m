Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2C81683
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxRZ6e/+xMTVExEbb/pDjkMbQU9hxaZsmMBtpNDa64g=; b=apCBdDlcnI13Yq
	MflDQDculGGs+xz9LmgIxlXNmxpGSDvjlkOAv7CPUiHRdNx4cwKONGXI5oHPqgH5O0IsOXDqTrd4W
	9GJhcReBBqaO3pT7A7ewrmpgRBxmB9ajlkr2XqdWp3qZxYNKjNHLb271t0C1oEg8TrNf/mnzztMHy
	P25bJk2RV58NSviFz2QfpvnyVPN2xq6OcQn3T7H+TzzYOHqjmul25/RIrtbN4t5Kkbyaf9+B6p36F
	GCQjLfwPHtkIDJLuz1P6Xl8TQ4zmhzaGrVznPTvx449525F0c8q/PXumkNXqNFrSt68I0sRKio9pL
	ngLwdFl7b6PsTsO12cyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZwD-0000Mr-2t; Mon, 05 Aug 2019 10:09:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZvy-0000Bc-BU
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:09:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so78738183ljh.6
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xtjYgK/kMd57m6KfrfOB62bKyZiiQD+dYMhD8L2z0Y=;
 b=qIqjqetM/iqya25mvO1vrbiO42qMt9IyCAJYzpv0Wqpo9wqOGNluE4klznlIk2yZfv
 9KNaZg8QzFZY4Q48l5+z4eup/m2cpfChPGFOc5So/f9zrbncbo1LdwCbt/dw/Fjny/Qs
 8hQB3eiqnuhdTMb10EfyqrD3JPS+t1xX8aimYVGXXyk2bZN8P/AXvG0DZYn9hRECbBdM
 KHITvzTv2nInLM5fAiQTjnMtAjqRx7hmRFWsdvHjhN0DX60+eJHy1THDkvhV2DlONPnz
 LBWK4DrWvRSIY9dvL9VTn4DQSlR2B5z6GZrJAw6qQq1nF78r/A95zOz6L6+4rnQ+9gtI
 /3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xtjYgK/kMd57m6KfrfOB62bKyZiiQD+dYMhD8L2z0Y=;
 b=oJPhW79flKb7nGAQhWoGEeDMrpbUCK2nWIBfHhx3hUNexhtZ0aYh+CQZwTmqVKHZ+c
 KE1ZmEsA8TYk9qEmjKpKSolLtUEubTJJdMM7GHIX58ZhghzLb780fTUHHOHxoKLW65K4
 R6pUmetczRtLYQPc6aGoByZyvq4sygJdUvXHwyWmfXf3YasNTDgTmwRmUO7/DANaOYEH
 2vwQH5zAxyM9WBA9DDvjVFU60ACxyHhTLk34H22jifWyAKTFOGR6KI58U8R79Ioa9lYA
 oIt5GLZIcV+z5Oy3N6oaPs+UXctZWuhF1V4N5gutxqZ8rbHPgt6qBzIExU+cep8uu+BE
 vHbQ==
X-Gm-Message-State: APjAAAUpQzlZh8sDunRizImWkNEWB7hDOzoKKJtPOTOl4fjinyIjAzSp
 cEZM6GTKln2I16yUIeakO6sYcXDikTC2YCj3JKhwRA==
X-Google-Smtp-Source: APXvYqzw2Nx2CZBhSBfHRJe0EXDJKGkQ1w/cgOlJvHSUKAdSOSviOHbRJqsbQQlq6jDi9G5H9DWZgPS60Bpa9u1KaYw=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16414381ljs.54.1564999780576; 
 Mon, 05 Aug 2019 03:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-3-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-3-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:09:29 +0200
Message-ID: <CACRpkdZRgUubUF3qc7S-6zoe_L-dLDy284R3qK93qRTLyYOwbg@mail.gmail.com>
Subject: Re: [PATCH v8 02/11] dt-bindings: connector: add optional properties
 for Type-B
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030942_391886_A5B1B6E3 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> Add id-gpios, vbus-gpios, vbus-supply and pinctrl properties for
> usb-b-connector
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> v8 no changes

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
