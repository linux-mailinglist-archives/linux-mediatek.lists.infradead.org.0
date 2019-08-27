Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D5B9F279
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 20:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qebS2up3HRNnlZA3fDE+RfwZJdLX46PC8R3ZA+6pMrM=; b=caVWtqXWk0erwL
	w7i28VevxvUAzV+kh3TccZeYS8IgqBpqp9vmL9ZZ+9SSWUhGhTWXklPOvPV+jpe/pO2d8guccTQcS
	wQ0WHFrWMounlgCtMOLVSRgYis7kdgiFuDKo/RUex3qlHiafTGC99x6Ozfk2tLcG5vz8ChRM1UDv9
	NuUSqw4JxwyLuwrjqMcvqWJh+9e7LEymh3kkP339NFPv4P1Th4yDcr541WPO/eL+IOktk2VCKxNiF
	ho6/H/lcbCIuAM5R94eDTJgBigCYLk6yg+bZH8mx0/AUdKPt9wlYnLecA4UMuiVpQoVPpdJLI+r/O
	hjXOwmJOvRJnvc7q/VaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2gNS-0004UI-Ot; Tue, 27 Aug 2019 18:39:34 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2gNP-0004Ta-QD
 for linux-mediatek@lists.infradead.org; Tue, 27 Aug 2019 18:39:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id w4so116418ote.11
 for <linux-mediatek@lists.infradead.org>; Tue, 27 Aug 2019 11:39:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=XMfpx8zaYFv8FB4sdyqjlN5h9P+ymLOJHIBXDCz83lw=;
 b=dFMgy+5HOF19UVdVskqtmur0TKKbm32seaQSjk+j5u2IfYRp9dNeAvV/fv4/BhqZNV
 /CDy8QfytI6KH3ilM3R7hrRC61iCdHOVu3yjOtVPXuiTrf/I+ujWQl9xBb6RnU6lsjyu
 y0xGRyeZxky7rt8Wt+283HnJSAlryiX+Q8+I/tsMOxHUcRw7LWSuzH6b7vmBc3IKfFjv
 DMjrLiJ/8sXqsLU79jqEYKtY5mQ8Vw/0X8BIL0nO+MBPElItt+3sVzXcl6YnQ1tAcaEf
 zKsrsPXC9IgJhVqhok9ocXQyXl7H/M2CMBrOOyht6TuCRHHVO1DXZXfFLBg+Y6Pqmn4g
 RI4g==
X-Gm-Message-State: APjAAAURyHnqYDUbxWKkV5sIhAICZY4p/cba3Q6fRwhym3k7jtQ/n3V6
 zBmCoJ3SLz/Ko3lr0tut1pgrUq0yTA==
X-Google-Smtp-Source: APXvYqzoemcNCPbstiXM/G8dfEnWRe5MtRuqF2QfOKr+DAg0PvZiCXcrcG6fxo8TiaEvdRGl8Ab2hg==
X-Received: by 2002:a9d:170b:: with SMTP id i11mr40703ota.60.1566931169589;
 Tue, 27 Aug 2019 11:39:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z16sm3966oic.10.2019.08.27.11.39.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 11:39:25 -0700 (PDT)
Date: Tue, 27 Aug 2019 13:39:24 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v5 07/13] dt-bindings: pwm: add a property "num-pwms"
Message-ID: <20190827183924.GA24178@bogus>
References: <1566457123-20791-1-git-send-email-sam.shih@mediatek.com>
 <1566457123-20791-8-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566457123-20791-8-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_113931_854601_B62FC817 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 02:58:37PM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>

The subject should indicate this is for Mediatek.

> =

> This adds a property "num-pwms" in example so that we could
> specify the number of PWM channels via device tree.
> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v5:
> - Add an Acked-by tag
> - This file is original v4 patch 5/10
> (https://patchwork.kernel.org/patch/11102577/)
> =

> Change-Id: I429048afeffa96f3f14533910efe242f88776043
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> =

> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Doc=
umentation/devicetree/bindings/pwm/pwm-mediatek.txt
> index 991728cb46cb..ea95b490a913 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> @@ -14,12 +14,12 @@ Required properties:
>                  has no clocks
>     - "top": the top clock generator
>     - "main": clock used by the PWM core
> -   - "pwm1-8": the eight per PWM clocks for mt2712
> -   - "pwm1-6": the six per PWM clocks for mt7622
> -   - "pwm1-5": the five per PWM clocks for mt7623
> +   - "pwm1-N": the PWM clocks for each channel
> +   where N starting from 1 to the maximum number of PWM channels

Once converted to schema, you are going to be back to listing them out.

>   - pinctrl-names: Must contain a "default" entry.
>   - pinctrl-0: One property must exist for each entry in pinctrl-names.
>     See pinctrl/pinctrl-bindings.txt for details of the property values.
> + - num-pwms: the number of PWM channels.

You can't add new required properties without breaking compatibility. =


You already have to imply the number of channels from the compatible (or =

number of clocks) and you have to keep doing so to maintain =

compatibility, so why not just keep doing that for new chips?

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
