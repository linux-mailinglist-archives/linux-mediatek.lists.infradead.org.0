Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0E51D09B
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 May 2019 22:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZOztU6DtPFz+zQkdR+IsxyGnD4kBEjSG8elOghUE/k=; b=AxbcIsFt0U6w1A
	6oyxbMCbWNYBZkO1Hubjk2rqeAPSnREdeBYmfDDoPV9wwk6FjMmVKLfIoQ7x10wD6mcR9Jk760JLA
	J9AIWUc5UPf6zgxqep8lLuGlsNfgPqf2HMNGlLUUM8o0tl+toX9KALRfBB5XRUHt85VJtMqTvWyS6
	OzN42rTF8xoacpCabkOXr17Fr2vuetie7As6PNysIzDtn5ZnQ074AlP0tMP6CgfUAI7j5xv9M+ldc
	gowP2CzdPyoUiX9G/YZpHbTUnlStHZNCpcXlHdbJ0Eq0AKgglOpjC1UajHE7QT+GgcFnrEdboVcIv
	bFIFGmaxYuePuozmnZEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQe1n-0007kQ-V1; Tue, 14 May 2019 20:27:59 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQe1e-0007cd-W8; Tue, 14 May 2019 20:27:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id y10so111934oia.8;
 Tue, 14 May 2019 13:27:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kw0/GP3EsXZW6LUJqBkxGevYhmRsqd6LBUlMlUibiPE=;
 b=gYNMsN1pb3QZEjCxQsjBRvMQxfGX9aA9uCMXwd7HS232tOz4KRTsvnDWk0wflDVMBI
 EWvjhfhzossl/4eAMkTfIgSGP2+u+cBXrdZQLaE4zhOmbmzl9RuYemfjZhzeF4U8Zceg
 P7ULf1g2AaDFNr6oLC1qLmLo53RNirrMYidnd3JNWVdGgO99gQAlAfX6een8dm2EtM1W
 jijimjuKnbiCKHCSBAGw591KI+H1wgtKEmCUv0G+VNUiXiALaO8CR663QKriGAoHB38o
 pCbhAejJh9/bajutJ33rBUeCs7IiXubwMItrsc7+y2SGr5j4LvtQO/IrJZG1Of09Rd3d
 ETPA==
X-Gm-Message-State: APjAAAWgkv/L7ksyZGh+uvnuvSjB1juqcbR4CRgMaeN7jZ4GrKGGFLGF
 RjQre1LE4mIy7ZykG9+qiA==
X-Google-Smtp-Source: APXvYqw4vGKzCpOYn9dsgcfrTdEK0JiPQpO/Z6fOg7WvWNBNYtbCoCO+0Sl62db46/ol9PDe98J5yw==
X-Received: by 2002:aca:c6c2:: with SMTP id w185mr4183258oif.104.1557865670120; 
 Tue, 14 May 2019 13:27:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m63sm6521698otc.76.2019.05.14.13.27.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:27:49 -0700 (PDT)
Date: Tue, 14 May 2019 15:27:48 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Parent <fparent@baylibre.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: regulator: add support for MT6392
Message-ID: <20190514202748.GA20452@bogus>
References: <20190513161026.31308-1-fparent@baylibre.com>
 <20190513161026.31308-2-fparent@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513161026.31308-2-fparent@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_132751_032875_4C6C04DF 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 18:10:22 +0200, Fabien Parent wrote:
> Add binding documentation of the regulator for MT6392 SoCs.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
> 
> v2:
> 	* Use 'pmic' as node name for the pmic.
> 	* Use 'regulators' as node name for the regulators
> 	* use dash instead of underscore for regulator's node names.
> 
> ---
>  .../bindings/regulator/mt6392-regulator.txt   | 220 ++++++++++++++++++
>  1 file changed, 220 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mt6392-regulator.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
