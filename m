Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA4AA59A2
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 16:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qizqZf/4ZQTbemV9w5BaV3rgahDLpnIHPObXOFFYZQ8=; b=ikQndX1qCCw1uo
	hO4EFQy9CDxY+3bpu7e+ie7r9XGN1KkVJIxECNmxTleV9VwPMCRjeCR5KJ0vB32fpP5EFIwwzmc3Y
	CChGiYxAfphLyi5F0Rat/CjO23hXmM9Xt4RYw7Q5qMFfhkrSxswMwxjtIx7dlSv/wX1S+YWVD9C6Y
	tlPFm+am9yKqSMaAcVPYLgcrcuyZGW+WlIhXDSOhELFDdNhsUzhH0VM44fUnP63Bzm44YXDdxxHqN
	BoYX0sNM/Kgybgw6zEeUJdFdaHrQQe7v9ea9yxph5lHykcmqPhs42xJbvkKiwb3NKSxGVqh5HyMKd
	paX33HD9DoeVU2kGLA6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4nYW-00078b-I9; Mon, 02 Sep 2019 14:43:44 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4nYS-000787-Nl
 for linux-mediatek@lists.infradead.org; Mon, 02 Sep 2019 14:43:41 +0000
Received: by mail-wm1-f65.google.com with SMTP id k2so13437847wmj.4
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Sep 2019 07:43:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=iZLcdNS033cxSK0Fvg6MV+q8rh6JD3AHU1mNNgBVJpQ=;
 b=p40JigD5QdIASJyqZ00YnRGBkvSCe9rvHceQNQi7UsYW9+6Fg5megmuYnND+hjqpin
 PMAMKrsn+vNJ2X7SVrodpCOfDKZroH9sBaBPe0Wer4pg+pTB8JL1KiPbiRPFY6FTM77e
 26bvqWM8+oNG4agVfAtZPXL/Eu5u/n9xdgUvZcEI2Pm83Gzi/1yjYqMQFn9cH4fqXk1W
 X/c4CKG0+0w1mLhPX4+79bYF60wN1A6u3ITebduhZ8QblpjwfgMThdGlpFuyTeGXHmXO
 i8b5KTGTP4mnCrHCyBfqYgsMl2FMcO4K+Dd6rrsCONBSRtO+aVel/b23zVcfTkwxriu+
 OiFg==
X-Gm-Message-State: APjAAAXIQ1VwrSUtDfjuX0W7wFG3oRttHFCnUl7XzTTEEUuPOtw80FR/
 1exa71qGpg20U0mtjve6bQ==
X-Google-Smtp-Source: APXvYqwxtxRib647UlHObm5LyGs/Ur8DIObbfrBfd03KY7R2uk+nMKra+8g2kZJ8KgljWasyIMoWRA==
X-Received: by 2002:a05:600c:23cd:: with SMTP id
 p13mr33723857wmb.86.1567435418805; 
 Mon, 02 Sep 2019 07:43:38 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id q192sm3004661wme.23.2019.09.02.07.43.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 07:43:38 -0700 (PDT)
Date: Mon, 2 Sep 2019 15:43:37 +0100
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v7 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
Message-ID: <20190902144337.GA25200@bogus>
References: <1567137437-10041-1-git-send-email-sam.shih@mediatek.com>
 <1567137437-10041-8-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567137437-10041-8-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_074340_777996_FE57F0B2 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Fri, Aug 30, 2019 at 11:57:13AM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> =

> This adds a property "num-pwms" in example so that we could
> specify the number of PWM channels via device tree.

Please respond to my questions on v5.

> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
