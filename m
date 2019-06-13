Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9A644D6C
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 22:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDHvSzxYaVoU6SYNbU8c2qUorqiTx8knrow5GO4jacs=; b=P4ErvHfTJvoPMJ
	qif6A6q0cAjRkCQPkXm9oGh0hQDdqo0okuxCVg0EZD17GNZ1W3OcCkjMOr1DIw3ztSH8QWuHNSyGC
	AuI7/n8QE/r7rM2hJCLb9p8OZwx6LsY/PWI/H8a3n7MxESRn0+MM9K2zMQD3C8hwv/jcAAo/5iHrz
	p1kQ5OYg6Pyi8gtKZ4gCOMcjKutWC+4LyV8nVDs1UWcB+x09WDsHRwGZkhUEkJ9JYf7pUzgmG/xXn
	98LLASmWGMiMnVZegKl0FhYGNk811ySjq0yw5GuihpYmUV9iQ/lW7f6pHxLdHlnjPXxrzZDlK4xMi
	4QnOGSAWbv5YPHoZjx+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbWL7-0000dL-Ck; Thu, 13 Jun 2019 20:28:53 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbWKw-0000Ua-Do; Thu, 13 Jun 2019 20:28:43 +0000
Received: by mail-qt1-f196.google.com with SMTP id j19so24132201qtr.12;
 Thu, 13 Jun 2019 13:28:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aEXZ9ovG0nQIpd8Z74pAm7FU5KWUqGz2YDsBOtBFjmI=;
 b=czKPf1j4WVH2WK7VwQ0JWbIL27j5j+Z0pol6F5aD/OLG+RAaaecsVXgFz4GstBPHtC
 BPdes4IDgCrkB6IEtpHcH7JfBlncV3NZVRp59TUiI6C5ysDcbSd5eNjXyAFsMCbLxiQ3
 OG3Q+RLrDQZtTzqYHIso6nMf8b0mH9crnmLQYHoECRYsSM4VN6zyf1+sFJvq44G8/+ce
 W4MzoAbZ5LVwGdApSPDkSguM7C0feTf3hIPEr+5LY9Ak+k8HqEyB5MeiTidGQ3CUsgoJ
 D/7V2yepI3AgsmyDeFwTZ1bJdKy6emBmc1kl4PUIOqEb6TXMMiOO0vCo585hBfcjfNri
 XK2A==
X-Gm-Message-State: APjAAAVaQQn3nDgrRKpl3zoVSkqWdw66PNuGRi9KR0uqZkP4QiSSgTib
 i9hLEJzGjJ9jGypRSI15HQ==
X-Google-Smtp-Source: APXvYqx/GGQsQaZAE82OHRCzaZxHMgbVOY4Azf/9Ea8dY74XXg53tRU0GwGVV778oTBgcmL/ZE+rbQ==
X-Received: by 2002:ac8:689a:: with SMTP id m26mr34806510qtq.192.1560457720530; 
 Thu, 13 Jun 2019 13:28:40 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id o38sm453562qto.96.2019.06.13.13.28.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 13 Jun 2019 13:28:39 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:28:38 -0600
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH 1/2] dt-bindings: input: mtk-pmic-keys: add MT6392
 binding definition
Message-ID: <20190613202838.GA20410@bogus>
References: <20190513142120.6527-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513142120.6527-1-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_132842_473547_7EB51885 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 16:21:19 +0200, Fabien Parent wrote:
> Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  .../devicetree/bindings/input/mtk-pmic-keys.txt       | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
