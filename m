Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA03D24EC4
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:From:Reply-To:To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XotOkX10ZPtC+MtXEj4fivUSHlnGwL/1QKkX2Se9aFA=; b=oMEAFjC96RPQkC
	+NrZDCm455krSXx9Uf3trKhMUk53jlMlLwc5UcHQ2XhP8VOzqbZKybAT3ORBIrMjl/A6FM2HamV8k
	3cfLX83h4BJRbORIuYX2cX6Kf2eSCjTvjs6TMTQe1Je+FrI2szQFeojYBLIMGROIV1ij/o7irjxFr
	7PRW0CUeO2JgC/WVHkQYPO1AdR0OxS+yo4zTJxGKWAw09xeuxk8AMT8+I+xo3ATR0/KABJG4cV7o5
	Rg5p9av//wjbcDMLHhsQbrO2FN6t3ET88awtoihUN5EKZWLR1Gs3kNzx/jevP6QbPOrj4NcT6JMsN
	qS+wfiJ2c0utn+/k1dOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3gz-0002Hw-1O; Tue, 21 May 2019 12:16:29 +0000
Received: from mail-oln040092065019.outbound.protection.outlook.com
 ([40.92.65.19] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3gp-0002A2-Eo; Tue, 21 May 2019 12:16:20 +0000
Received: from VE1EUR01FT058.eop-EUR01.prod.protection.outlook.com
 (10.152.2.54) by VE1EUR01HT145.eop-EUR01.prod.protection.outlook.com
 (10.152.3.191) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16; Tue, 21 May
 2019 12:16:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com (10.152.2.54) by
 VE1EUR01FT058.mail.protection.outlook.com (10.152.3.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 12:16:14 +0000
Received: from VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3]) by VI1PR07MB4432.eurprd07.prod.outlook.com
 ([fe80::91f:b1bb:a60a:fdc3%7]) with mapi id 15.20.1922.013; Tue, 21 May 2019
 12:16:14 +0000
From: Philippe Mazenauer <philippe.mazenauer@outlook.de>
Subject: [PATCH] clk: Remove unused variable
Thread-Topic: [PATCH] clk: Remove unused variable
Thread-Index: AQHVD878NH4niKcAbkGQS1Zq+TuwCg==
Date: Tue, 21 May 2019 12:16:14 +0000
Message-ID: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR0201CA0045.namprd02.prod.outlook.com
 (2603:10b6:301:73::22) To VI1PR07MB4432.eurprd07.prod.outlook.com
 (2603:10a6:802:67::17)
x-incomingtopheadermarker: OriginalChecksum:AC1CDF9B7E0587675D62C5068EBBAEEFEC3198AA2838AA2DEEEB372B33E36057;
 UpperCasedChecksum:F12575AB9399412C42B53289C4DC711B69F7A80BEF1B18AF3232D82A69D6696A;
 SizeAsReceived:7733; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [nJ1juxtnP1Zcdux7epdSyzoGFywwolgO]
x-microsoft-original-message-id: <20190521121547.119863-1-philippe.mazenauer@outlook.de>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR01HT145; 
x-ms-traffictypediagnostic: VE1EUR01HT145:
x-microsoft-antispam-message-info: BQrbwy9gZ2t/mX75oj20cZ9Gt8TciHH9LYQqfCp6YoTF9coVOiYEvbFj1P00OhCK40PNBwo30sfRKUfqGnv/Oy98rwCjTeubSBDzbzyV44SX9qVdDIXCZvQqwcDzxK5W8AUeMmmcZX4XHiSrLdnBvmRLpw6xTLROGrlN46PO5/3/+IYJ/bLymd5NwtWq5Udd
Content-ID: <A735F365BEE52F4FB81877FF849B6A63@eurprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b43d6e31-bbb0-4f49-bcfd-08d6dde61e20
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 12:16:14.4118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_051619_492330_2C1FA122 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.65.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (philippe.mazenauer[at]outlook.de)
 1.2 MISSING_HEADERS        Missing To: header
 1.6 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, "open
 list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

VmFyaWFibGUgJ2RkcnBoeWNmZ19wYXJlbnRzJyBpcyBkZWZpbmVkIHN0YXRpYyBhbmQgaW5pdGlh
bGl6ZWQsIGJ1dCBub3QNCnVzZWQgaW4gdGhlIGZpbGUuDQoNCi4uL2RyaXZlcnMvY2xrL21lZGlh
dGVrL2Nsay1tdDg1MTYuYzoyMzQ6Mjc6IHdhcm5pbmc6IOKAmGRkcnBoeWNmZ19wYXJlbnRz4oCZ
IGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dDQogc3RhdGlj
IGNvbnN0IGNoYXIgKiBjb25zdCBkZHJwaHljZmdfcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0K
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4NCg0KU2lnbmVkLW9m
Zi1ieTogUGhpbGlwcGUgTWF6ZW5hdWVyIDxwaGlsaXBwZS5tYXplbmF1ZXJAb3V0bG9vay5kZT4N
Ci0tLQ0KIGRyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDg1MTYuYyB8IDUgLS0tLS0NCiAxIGZp
bGUgY2hhbmdlZCwgNSBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL21l
ZGlhdGVrL2Nsay1tdDg1MTYuYyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1tdDg1MTYuYw0K
aW5kZXggMjZmZTQzY2M5ZWEyLi45ZDQyNjFlY2M3NjAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Ns
ay9tZWRpYXRlay9jbGstbXQ4NTE2LmMNCisrKyBiL2RyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1t
dDg1MTYuYw0KQEAgLTIzMSwxMSArMjMxLDYgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBu
ZmkxeF9wYWRfcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0KIAkibmZpMXhfY2siDQogfTsNCiAN
Ci1zdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGRkcnBoeWNmZ19wYXJlbnRzW10gX19pbml0Y29u
c3QgPSB7DQotCSJjbGsyNm1fY2siLA0KLQkibWFpbnBsbF9kMTYiDQotfTsNCi0NCiBzdGF0aWMg
Y29uc3QgY2hhciAqIGNvbnN0IHVzYl83OG1fcGFyZW50c1tdIF9faW5pdGNvbnN0ID0gew0KIAki
Y2xrX251bGwiLA0KIAkiY2xrMjZtX2NrIiwNCi0tIA0KMi4xNy4xDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcg
bGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
