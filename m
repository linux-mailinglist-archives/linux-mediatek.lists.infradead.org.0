Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A543113544
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Dec 2019 19:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/G36dbeXQctcRq6yff3t5ERtwnlB5MzJD06y4W7ps4=; b=Y+VjvMYmKAG2nN
	g6jc4bdx3MTejeUO7YxGQPBftJ4iqMDKTWYeCYIolVG8fFNwZiUIThOr2x9+v2myQw/biDGjKpZtS
	WtftnXl+B/LAwykmXaU5iFSaK5WDid76qBuPyOLshBPVCAOGYK+zKtZoI2yNozbQ/2BgqFnLYiJAv
	5j7zD8Oyo5rVD5soxCQHSm8MnGbF+LqWuKmztmsVZSz3KkcqPZ5mPMQ9wlSiPj8xz9rYkJT3tMDYr
	CtQvQlUZ/nMko+VJlw6HXfU46hGvZJvfbNx35KTK4lUqq1zRjcFsWuqTKkNO3NL0hotGKp88qyTGk
	ZI5gmJwtEMYC4g+AjfLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZqv-0002RP-I2; Wed, 04 Dec 2019 18:58:21 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZqq-0002Qp-8P; Wed, 04 Dec 2019 18:58:19 +0000
Received: by mail-ot1-f68.google.com with SMTP id x3so195065oto.11;
 Wed, 04 Dec 2019 10:58:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bhAw5EIrwwGC1eqIzLBcurAl7dDZA4dCCIXam/BMZgA=;
 b=RgbQ7g5Nc1/4ymwUmasvktExeFP3LET+0SKsU7EwU5kphPcc/JJnadKT3EIjYG8OQc
 k54wjdt9nwzEH/EiYMj6mhA1BCkioq87dev5NOKMROooRRXbffgOSGU6QRLpnqoW3pA+
 nqlqfInqKK4+2ptjAayp7nf2joiFLNZZdwhPtTM6wFOJAYePMagkOd4LI+R/krp3gbVL
 /HHnpEreEt4MLTb1VqUJjT5G86uDcrF/dHpta8KlqPHqZBBAF5vezvGZ+2n2CTFqYmTR
 ySwgbA9qzvSO9GyGMvI6CGe7/M9AwbIMYHPcHwS8IxA45AA1He5PzVuln8LP5E7En/Uc
 yxsg==
X-Gm-Message-State: APjAAAVz4Mne4QLw5LW3Kkbtv58SPuIDeragz6x61TEkCuoZZbDvF7g/
 OEw9VrgN6QqKO3v83DyfLw==
X-Google-Smtp-Source: APXvYqyhikx3yghkHjt5R9cmpYpMgQpTzsJXnZPaFUw1zHqWLWzLrAfwaR2k5BK5VzCtPrWZ+QpwoQ==
X-Received: by 2002:a9d:630d:: with SMTP id q13mr3480338otk.31.1575485894893; 
 Wed, 04 Dec 2019 10:58:14 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v24sm2456801ote.38.2019.12.04.10.58.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 10:58:14 -0800 (PST)
Date: Wed, 4 Dec 2019 12:58:13 -0600
From: Rob Herring <robh@kernel.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V4 2/4] dt-bindings: mt8183: Added FD dt-bindings
Message-ID: <20191204185813.GA23184@bogus>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-3-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204124732.10932-3-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_105816_296451_766A459C 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 zwisler@chromium.org, srv_heupstream@mediatek.com, christie.yu@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.com>, tfiga@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, pihsun@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019 20:47:30 +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Face Detection (FD)
> unit of the Mediatek's mt8183 SoC.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
