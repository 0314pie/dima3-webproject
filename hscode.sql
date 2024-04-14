/* HSCODE ��4�ڸ� ���̺�*/
DROP TABLE headings;
CREATE TABLE headings
(
    hs_4digit VARCHAR2(10) PRIMARY KEY          -- hs code �� 4�ڸ�
    , ko_description VARCHAR2(2000) NOT NULL    -- �ѱ� ����
    , eng_description VARCHAR2(2000) NOT NULL   -- ���� ����
);


/*HSCODE 10�ڸ� ���̺�*/
DROP TABLE subheadings;
DROP SEQUENCE subhead_seq;

CREATE TABLE subheadings
(
    subhead_seq NUMBER PRIMARY KEY              -- �Ϸù�ȣ
    , hs_4digit VARCHAR2(10) REFERENCES headings(hs_4digit) ON DELETE CASCADE   -- hscode ��4�ڸ�
    , hs_6digit VARCHAR2(10)    -- hs code ��� 2�ڸ�(6�ڸ��� ��2�ڸ�)
    , hs_10digit VARCHAR2(10)   -- hs code ������ 4�ڸ�(10�ڸ��� ��4�ڸ�)
    , ko_description VARCHAR2(2000) NOT NULL    -- �ѱ� ����
    , eng_description VARCHAR2(2000) NOT NULL   -- ���� ����
);
CREATE SEQUENCE subhead_seq;


/*ǰ�� ��� ���̺� - ������ top5����*/
DROP TABLE country_top5;
DROP SEQUENCE top5_seq;

CREATE TABLE country_top5
(
    top5_seq NUMBER PRIMARY KEY          -- �Ϸù�ȣ
    , hs_4digit VARCHAR2(10) NOT NULL    -- hs code ��4�ڸ�
    , country_name VARCHAR2(30) NOT NULL -- ������
    , export_ranking NUMBER NOT NULL     -- �������
    , export_amount NUMBER NOT NULL      -- �����
    , import_ranking NUMBER NOT NULL     -- ���Լ���
    , import_amount NUMBER NOT NULL      -- ���Ծ�
);
CREATE SEQUENCE top5_seq;
