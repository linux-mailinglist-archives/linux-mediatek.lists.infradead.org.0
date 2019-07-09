Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A3C63C66
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jul 2019 22:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgGzK4uazRjes0lRZUWjFAWTmxFhFUCo5iTqSq83fQA=; b=eEUUWe4Q6Xb4Av
	zHPL5imz0hPp3z/3NkvDzSQTyiOC5VwR2olvqgx9+W/OtDgxgaCX5NVNAiunpv2M6g+AEDDkYQKnC
	w4LVG0QMcD+xqhBDjIl9QPkRPtYHOVt5KTFFTGYFha7i4VdJmMpnIIetxCuYnrRMScnpaJisOF1cN
	WMGht3CDB6Ptpq+dRygrWhSmcNEI2DZbKhi9ORfJwB0mWfvNX1tEPz1T83K6N1QyxD01cA4kuGn9+
	L1bawGu+yvrMKzsSgTZ29+dpmESu0UDxf+JPWvpPwsrONR0DS4UCTu4A4NP16nVPRmLyKaxeoAi94
	vq0Ap+bZeJZOG0CaeD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwLc-0004Aj-Mk; Tue, 09 Jul 2019 20:04:20 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwLX-0004AK-So
 for linux-mediatek@lists.infradead.org; Tue, 09 Jul 2019 20:04:17 +0000
Received: by mail-io1-f68.google.com with SMTP id h6so37650283iom.7
 for <linux-mediatek@lists.infradead.org>; Tue, 09 Jul 2019 13:04:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+sg0UyNjWzyl9UoPX5uT2MaLOsmSi9S3hgZlVeDp1RI=;
 b=DA73kHsp7yz+QoLhV/O3GcOzbce4GrtQsDXmh1WL91F4Ir7ixiNpjh1BPri+RuzrQf
 rs0yiXjSzcAQWFB64arfBvLb2ZOynUMJfUo1KPQs0tU1g7sUG3aOS1/UEmScdwdL2Mff
 Q1IyFCpg1QvGACUf2i99R3KXKI+Z8iiHlpYWKHdnvXjJ8KAsY+QGX69ky/2SqNnCH5Ig
 YoryCbbPkq68pky62jpXWCns3dX6z/Y0klz+NF5YxO+tDI0QYOwmSVPbT2QLzulvRuUW
 er0Q+0cCQG3OU6nlmZXEffKxeWZu2wrSu3iNygvYtql3G3UmTj5YjJbfwu5wytY9PK2/
 UWgw==
X-Gm-Message-State: APjAAAWkOP3KrK743qKa43vRZuYnjOxoQXCV5klMLrZa0ujH+jsABpZN
 3K5aCiJYFOCR6ACU6MFRgw==
X-Google-Smtp-Source: APXvYqwNBbbM+5EwluWGAGRnJzyxhFhXIpqQVpCldduopah8wyZu2MowBNaCukNHrB2XA+YLzVEGuQ==
X-Received: by 2002:a02:5a89:: with SMTP id
 v131mr30764937jaa.130.1562702654827; 
 Tue, 09 Jul 2019 13:04:14 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id e188sm18828101ioa.3.2019.07.09.13.04.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 13:04:14 -0700 (PDT)
Date: Tue, 9 Jul 2019 14:04:13 -0600
From: Rob Herring <robh@kernel.org>
To: Claire Chang <tientzu@chromium.org>
Subject: Re: [PATCH v2] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
Message-ID: <20190709200413.GA31193@bogus>
References: <20190619084110.136713-1-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619084110.136713-1-tientzu@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_130415_927517_FC95A2E1 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 changqi.hu@mediatek.com, gregkh@linuxfoundation.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Claire Chang <tientzu@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 19 Jun 2019 16:41:10 +0800, Claire Chang wrote:
> To support Rx in-band wakeup, one must create an interrupt specifier with
> edge sensitivity on Rx pin and an addtional pinctrl to reconfigure Rx pin
> to normal GPIO in sleep state. Driver will switch to sleep mode pinctrl and
> enable irq wake before suspend and restore to default settings when
> resuming.
> 
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> ---
> changes in v2:
> just document 'interrupts' instead of 'interrupts-extended'
> 
>  .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
